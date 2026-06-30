# SPECYFIKACJA INTEGRACJI N8N — GREGOR ACADEMY (AUTOMATYZACJA REKRUTACJI)

Ten dokument opisuje kompletny przepływ automatyzacji rekrutacji od nowego wpisu w formularzu, przez kalkulacje finansowe, wygenerowanie linku Autopay do opłaty rezerwacyjnej (200 PLN), aż po wygenerowanie umowy i wysłanie jej do zdalnego podpisu.

---

## 🏗️ ARCHITEKTURA SYSTEMU

```
[Formularz WWW / WordPress] 
      │
      ▼
[Arkusz Google (Tabela Zapisów)]
      │
      ▼
[ n8n Webhook / Trigger ]
      │
      ▼
[ HTTP Request -> AI Project Hub /api/ga/calculate ] ──► (Zwraca precyzyjne daty, raty i klauzule umowy)
      │
      ▼
[ HTTP Request -> Autopay API ] ──► (Generuje link do wpłaty rezerwacyjnej 200 PLN)
      │
      ▼
[ E-mail do Rodzica: Potwierdzenie i Link Autopay ]
      │
      ▼ (Wpłata rezerwacyjna zaksięgowana — Webhook z Autopay)
[ Wygenerowanie Umowy PDF + Autenti / AdobeSign API ] ──► (Wysyłka do podpisu elektronicznego)
```

---

## ⚙️ ETAP 1: ODCZYT Z ARKUSZA GOOGLE (GOOGLE SHEETS TRIGGER)

* **Nazwa węzła n8n:** `Google Sheets Trigger`
* **Zdarzenie (Event):** `Row Added`
* **Arkusz docelowy (Spreadsheet):** `Formularz zapisu (Gregor Academy)` (Id: `1rDvjaneoaFPi75Xzgc3u2fX95IPqaIZ3T0xKLegig3I`)
* **Wychodzące dane (przykład JSON):**
  ```json
  {
    "rowNumber": 14,
    "timestamp": "2026-06-28 12:00:00",
    "name": "Jakub Kowalski",
    "email": "j.kowalski@gmail.com",
    "phone": "501 234 567",
    "courseType": "Angielski Matura",
    "studentCategory": "matura_8klasista",
    "selectedWeekday": 1, 
    "studentType": "new",
    "groupSize": "4-8",
    "courseCount": "1",
    "installmentCount": 10,
    "payDay": 15,
    "earlyBird": "june",
    "gala": true,
    "family": false
  }
  ```

---

## 🔢 ETAP 2: KALKULACJA HARMONOGRAMU (HTTP REQUEST -> AI PROJECT HUB)

Ten krok odpytuje nasz bezpieczny silnik obliczeniowy w chmurze (Google AI Studio / Cloud Run) w celu uzyskania precyzyjnego cennika, listy dat zajęć oraz sformatowanych klauzul umowy. Dzięki temu n8n nie musi powtarzać skomplikowanej logiki kalendarza dydaktycznego.

* **Nazwa węzła n8n:** `HTTP Request (Calculate GA)`
* **Metoda (Method):** `POST`
* **URL:** `https://[TWÓJ_URL_APLIKACJI]/api/ga/calculate`
* **Nagłówki (Headers):**
  * `Content-Type: application/json`
* **Treść żądania (JSON Body):**
  ```json
  {
    "studentCategory": "={{ $json.studentCategory }}",
    "selectedWeekday": "={{ $json.selectedWeekday }}",
    "studentType": "={{ $json.studentType }}",
    "groupSize": "={{ $json.groupSize }}",
    "courseCount": "={{ $json.courseCount }}",
    "installmentCount": "={{ $json.installmentCount }}",
    "payDay": "={{ $json.payDay }}",
    "discounts": {
      "earlyBird": "={{ $json.earlyBird || 'none' }}",
      "gala": "={{ $json.gala === 'true' || $json.gala === true }}",
      "family": "={{ $json.family === 'true' || $json.family === true }}"
    }
  }
  ```

### Przykładowa odpowiedź silnika kalkulatora (JSON):
```json
{
  "success": true,
  "calculations": {
    "lessonsCount": 32,
    "totalLessonHours": 64,
    "hourlyRate": 48,
    "basePrice": 3072,
    "finalCoursePrice": 2872,
    "reservationFee": 200,
    "remainingToInstallments": 2672,
    "standardInstallmentAmount": 267.2,
    "potentialTimelyDiscount": 120.24
  },
  "installments": [
    { "number": 1, "dueDate": "15.09.2026", "finalAmount": 267.2 },
    { "number": 10, "dueDate": "15.06.2027", "finalAmount": 146.96 }
  ],
  "contractClauseSegment": "Łączny koszt kursu rocznego wynosi 2872 zł... pozostała kwota 2672 zł dzielona jest na 10 rat..."
}
```

---

## 💳 ETAP 3: GENEROWANIE PŁATNOŚCI REZERWACYJNEJ (AUTOPAY API)

Gdy n8n otrzyma dane kalkulacji, odpytuje bezpośrednio API Autopay w celu wygenerowania bezpiecznego linku płatności (200 PLN).

* **Nazwa węzła n8n:** `HTTP Request (Create Autopay Link)`
* **Metoda (Method):** `POST`
* **URL Autopay (Środowisko Produkcyjne):** `https://secure.autopay.pl/api/v1/payment/create` (lub endpoint integracyjny według dokumentacji Autopay)
* **Autoryzacja:** Basic Auth (Twoje ID Partnera oraz Klucz Prywatny z panelu Autopay).
* **Treść żądania (JSON Body):**
  ```json
  {
    "amount": "200.00",
    "currency": "PLN",
    "orderId": "GA_REK_={{ $json.rowNumber }}_{{ Date.now() }}",
    "description": "Opłata rezerwacyjna Gregor Academy - {{ $('Google Sheets Trigger').item.json.name }}",
    "buyer": {
      "email": "={{ $('Google Sheets Trigger').item.json.email }}",
      "phone": "={{ $('Google Sheets Trigger').item.json.phone }}",
      "firstName": "={{ $('Google Sheets Trigger').item.json.name.split(' ')[0] }}",
      "lastName": "={{ $('Google Sheets Trigger').item.json.name.split(' ')[1] || '' }}"
    },
    "continueUrl": "https://gregor.edu.pl/dziekujemy-za-zapis",
    "notifyUrl": "https://[TWÓJ_URL_N8N]/webhook/autopay-callback"
  }
  ```

---

## ✉️ ETAP 4: WYSYŁKA MAILA POTWIERDZAJĄCEGO (EMAIL SENDER)

Wysyła ładny szablon HTML do rodzica zawierający podsumowanie kwot, rat oraz bezpośredni przycisk do szybkiej płatności Autopay.

* **Nazwa węzła n8n:** `Gmail / Send Email` (lub SMTP)
* **Do (To):** `={{ $('Google Sheets Trigger').item.json.email }}`
* **Temat (Subject):** `Gregor Academy — Potwierdzenie rejestracji i rezerwacja miejsca ({{ $('Google Sheets Trigger').item.json.name }})`
* **Treść HTML (HTML Body):**
  ```html
  <div style="font-family: sans-serif; max-width: 600px; margin: 0 auto; padding: 20px; border: 1px solid #e0e0e0; border-radius: 8px;">
    <h2 style="color: #4f46e5; text-align: center;">Witaj w Gregor Academy!</h2>
    <p>Dziękujemy za zapisanie dziecka na nasz kurs <strong>{{ $('Google Sheets Trigger').item.json.courseType }}</strong>.</p>
    
    <div style="background-color: #f9fafb; padding: 15px; border-radius: 6px; margin: 20px 0;">
      <h3 style="margin-top: 0; color: #1f2937;">Podsumowanie Kalkulacji:</h3>
      <table style="width: 100%; font-size: 14px;">
        <tr><td>Liczba lekcji w roku:</td><td style="text-align: right; font-weight: bold;">{{ $json.calculations.lessonsCount }} dni ({{ $json.calculations.totalLessonHours }} godzin)</td></tr>
        <tr><td>Cena końcowa kursu:</td><td style="text-align: right; font-weight: bold; color: #4f46e5;">{{ $json.calculations.finalCoursePrice }} PLN</td></tr>
        <tr><td>Opłata rezerwacyjna:</td><td style="text-align: right; font-weight: bold; color: #10b981;">{{ $json.calculations.reservationFee }} PLN</td></tr>
        <tr><td>Raty czesnego:</td><td style="text-align: right;">{{ $('Google Sheets Trigger').item.json.installmentCount }} miesięcy x {{ $json.calculations.standardInstallmentAmount }} PLN</td></tr>
      </table>
    </div>

    <p style="text-align: center; margin: 30px 0;">
      <a href="{{ $json.paymentUrl }}" style="background-color: #10b981; color: white; padding: 12px 30px; text-decoration: none; border-radius: 6px; font-weight: bold; font-size: 16px; box-shadow: 0 4px 6px rgba(0,0,0,0.1);">Opłać rezerwację miejsca (200 PLN) &gt;</a>
    </p>

    <p style="font-size: 12px; color: #6b7280;">* Opłata rezerwacyjna zalicza się na poczet czesnego i jest wymagana w celu uruchomienia procedury zdalnego podpisania umowy.</p>
  </div>
  ```

---

## 🖋️ ETAP 5: MONITOROWANIE WPŁATY I PODPIS UMOWY (WEBHOOK CALLBACK)

Tworzymy **osobny przepływ (workflow)** w n8n, który nasłuchuje zdarzeń z Autopay.

1. **Webhook Trigger (n8n):** Odbiera status `PAID` z Autopay.
2. **Generowanie PDF (PDF Generator / Google Docs):** n8n pobiera szablon umowy z Google Drive, wstawia wyliczoną klauzulę `{{ $json.contractClauseSegment }}` oraz harmonogram rat.
3. **Autenti / AdobeSign Integration (HTTP Request):** n8n przesyła gotowy dokument PDF do API Autenti z adresami e-mail obojga rodziców/opiekunów w celu zdalnego podpisania umowy jednym kliknięciem SMS.

---

## 🎯 ZALETY TEGO ROZWIĄZANIA DLA GRZEGORZA

1. **Brak pomyłek finansowych:** Cała matematyka roku szkolnego i cennika jest scentralizowana w kodzie. Jeśli zmienisz cennik lub daty w panelu, automatyzacja n8n od razu naliczy nowe kwoty bez modyfikowania przepływów!
2. **Pełna automatyzacja offline:** Proces od zapytania do wysłania umowy z linkiem do płatności trwa mniej niż 5 sekund i nie wymaga Twojej osobistej ingerencji.
3. **Bezpłatna integracja z Google Sheets:** Wykorzystujesz n8n na własnym serwerze VPS, co eliminuje opłaty za Zapiera czy Make.com!
