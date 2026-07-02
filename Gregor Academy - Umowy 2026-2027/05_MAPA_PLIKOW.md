# 05_MAPA_PLIKOW

Projekt: Gregor Academy — Umowy 2026/2027  
Wersja dokumentacji: v0.5.0  
Data ostatniej aktualizacji: 2026-07-02

---

## 1. Cel pliku

Ten plik opisuje strukturę plików projektu oraz ich przeznaczenie.

Służy jako mapa orientacyjna dla:

- dokumentacji w Obsidianie,
- kodu Google Apps Script,
- arkusza Google Sheets,
- przyszłej automatyzacji generowania umów PDF,
- przyszłego repozytorium GitHub.

---

## 2. Dokumentacja Obsidian

Folder główny projektu:

```text
Gregor Academy - Umowy 2026-2027/
```

### 2.1. Pliki główne

| Plik | Status | Opis |
|---|---:|---|
| `01_ZASADY_PRACY.md` | aktywny | Zasady prowadzenia projektu, sposób pracy, wersjonowanie, dokumentowanie zmian. |
| `02_STATUS_PROJEKTU.md` | aktywny | Aktualny stan projektu, wersja, ostatnio wykonane zadania, znane problemy. |
| `03_DECYZJE.md` | aktywny | Rejestr decyzji projektowych i biznesowych. |
| `04_LOG_POSTEPU.md` | aktywny | Chronologiczny log wykonanych zmian. |
| `05_MAPA_PLIKOW.md` | aktywny | Mapa plików i struktura projektu. |

---

## 3. Folder kodu Apps Script

Folder lokalny / dokumentacyjny:

```text
Gregor Academy - Umowy 2026-2027/apps-script/
```

Ten folder zawiera kopie kodu wdrażanego w Google Apps Script.

### 3.1. Pliki Apps Script

| Plik | Status | Opis |
|---|---:|---|
| `00_CONFIG.gs` | aktywny | Globalna konfiguracja projektu: nazwy arkuszy, identyfikatory, stałe, folder PDF. |
| `01_DNI_WOLNE.gs` | aktywny | Logika arkusza dni wolnych oraz menu główne `GA Umowy`. |
| `02_KONFIGURACJA.gs` | aktywny | Tworzenie i konfiguracja arkusza `Konfiguracja_26_27`. |
| `03_DANE_WEJSCIOWE.gs` | aktywny | Tworzenie arkusza `Dane_wejsciowe_26_27` i nagłówków danych uczniów. |
| `04_WALIDACJE.gs` | aktywny | Walidacje danych, listy wyboru i formatowanie kolumn wejściowych. |
| `05_OBLICZENIA.gs` | aktywny | Obliczenia finansowe: cena całkowita, rabat, cena po rabacie, wysokość raty. |

---

## 4. Google Sheets

Arkusz roboczy projektu:

```text
Gregor Academy — Umowy 2026/2027
```

Link:

```text
https://docs.google.com/spreadsheets/d/1rDvjaneoaFPi75Xzgc3u2fX95IPqaIZ3T0xKLegig3I/edit
```

### 4.1. Zakładki arkusza

| Zakładka | Status | Opis |
|---|---:|---|
| `Dni_wolne_26_27` | aktywna | Lista dni wolnych i przerw w roku szkolnym 2026/2027. |
| `Konfiguracja_26_27` | aktywna | Dane konfiguracyjne: rok szkolny, daty, ustawienia umów. |
| `Dane_wejsciowe_26_27` | aktywna | Dane uczniów i rodziców/opiekunów oraz parametry finansowe. |

---

## 5. Aktualne nagłówki arkusza `Dane_wejsciowe_26_27`

Aktualny układ kolumn:

| Kolejność | Nagłówek | Opis |
|---:|---|---|
| 1 | `ID_Ucznia` | Unikalny identyfikator ucznia. |
| 2 | `Imię_ucznia` | Imię ucznia. |
| 3 | `Nazwisko_ucznia` | Nazwisko ucznia. |
| 4 | `Imię_rodzica_opiekuna` | Imię rodzica lub opiekuna. |
| 5 | `Nazwisko_rodzica_opiekuna` | Nazwisko rodzica lub opiekuna. |
| 6 | `Email` | Adres e-mail rodzica/opiekuna. |
| 7 | `Telefon` | Numer telefonu. |
| 8 | `Ulica_i_nr` | Ulica i numer domu/mieszkania. |
| 9 | `Kod_pocztowy` | Kod pocztowy. |
| 10 | `Miasto` | Miejscowość. |
| 11 | `Typ_kursu` | Typ kursu wybrany z listy. |
| 12 | `Przedmiot` | Przedmiot zajęć. |
| 13 | `Poziom` | Poziom kursu. |
| 14 | `Liczba_rat` | Liczba rat płatności. |
| 15 | `Cena_miesięczna` | Cena miesięczna kursu. |
| 16 | `Liczba_miesięcy` | Liczba miesięcy objętych umową. |
| 17 | `Rabat` | Kwota rabatu. |
| 18 | `Uwagi` | Uwagi dodatkowe. |
| 19 | `Status` | Status rekordu / umowy. |

---

## 6. Kolumny obliczeniowe

Plik:

```text
05_OBLICZENIA.gs
```

dodaje lub aktualizuje kolumny obliczeniowe w arkuszu:

```text
Dane_wejsciowe_26_27
```

### 6.1. Kolumny finansowe

| Kolumna | Opis |
|---|---|
| `Cena_całkowita` | Cena miesięczna pomnożona przez liczbę miesięcy. |
| `Cena_po_rabacie` | Cena całkowita pomniejszona o rabat. |
| `Wysokość_raty` | Cena po rabacie podzielona przez liczbę rat. |

### 6.2. Wzór logiczny

```text
Cena_całkowita = Cena_miesięczna × Liczba_miesięcy
Cena_po_rabacie = Cena_całkowita - Rabat
Wysokość_raty = Cena_po_rabacie / Liczba_rat
```

---

## 7. Google Drive

Folder docelowy dla przyszłych plików PDF:

```text
1qEV1gRlfTYvF-kySW13V0tiCVH29X2DY
```

Planowane użycie:

- generowanie umów PDF,
- zapisywanie plików umów,
- późniejsza integracja z n8n lub inną automatyzacją.

---

## 8. Planowane repozytorium GitHub

Planowana nazwa repozytorium:

```text
gregor-academy-umowy-2026-2027
```

Planowana struktura:

```text
gregor-academy-umowy-2026-2027/
├── docs/
│   ├── 01_ZASADY_PRACY.md
│   ├── 02_STATUS_PROJEKTU.md
│   ├── 03_DECYZJE.md
│   ├── 04_LOG_POSTEPU.md
│   └── 05_MAPA_PLIKOW.md
├── apps-script/
│   ├── 00_CONFIG.gs
│   ├── 01_DNI_WOLNE.gs
│   ├── 02_KONFIGURACJA.gs
│   ├── 03_DANE_WEJSCIOWE.gs
│   ├── 04_WALIDACJE.gs
│   └── 05_OBLICZENIA.gs
└── README.md
```

---

## 9. Zależności między plikami

### 9.1. Kolejność logiczna modułów Apps Script

```text
00_CONFIG.gs
↓
01_DNI_WOLNE.gs
↓
02_KONFIGURACJA.gs
↓
03_DANE_WEJSCIOWE.gs
↓
04_WALIDACJE.gs
↓
05_OBLICZENIA.gs
```

### 9.2. Opis zależności

| Plik | Zależy od | Uwagi |
|---|---|---|
| `00_CONFIG.gs` | — | Plik bazowy, powinien być dostępny dla wszystkich modułów. |
| `01_DNI_WOLNE.gs` | `00_CONFIG.gs` | Korzysta z nazw arkuszy i konfiguracji globalnej. |
| `02_KONFIGURACJA.gs` | `00_CONFIG.gs` | Tworzy arkusz konfiguracyjny. |
| `03_DANE_WEJSCIOWE.gs` | `00_CONFIG.gs` | Tworzy arkusz danych wejściowych. |
| `04_WALIDACJE.gs` | `00_CONFIG.gs`, `03_DANE_WEJSCIOWE.gs` | Nakłada walidacje na istniejący arkusz danych. |
| `05_OBLICZENIA.gs` | `00_CONFIG.gs`, `03_DANE_WEJSCIOWE.gs` | Przelicza dane finansowe na podstawie danych wejściowych. |

---

## 10. Historia zmian pliku

| Wersja     | Data       | Zmiana                                                                      |
| ---------- | ---------- | --------------------------------------------------------------------------- |
| v0.1.0     | 2026-07-02 | Utworzenie początkowej mapy plików.                                         |
| v0.4.0     | 2026-07-02 | Dodanie informacji o walidacjach i modułach Apps Script.                    |
| v0.5.0     | 2026-07-02 | Dodanie modułu `05_OBLICZENIA.gs`, kolumn finansowych oraz logiki obliczeń. |
| v0.5.1-dev | 2026-07-02 | Dodanie kolumny `Liczba_miesięcy` do danych wejściowych i mapy plików.      |

| `apps-script/05_OBLICZENIA.gs` | Utworzony | Oblicza wartości finansowe umowy: cena całkowita, rabat, kwota po rabacie, rata |

