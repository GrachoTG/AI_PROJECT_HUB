# Log postępu — Gregor Academy Umowy 2026/2027

## 2026-06-30

### v0.0.1 — Utworzenie pamięci projektowej w Obsidianie

Wykonano:

- utworzono folder projektu w Obsidianie:
  - `Gregor Academy - Umowy 2026-2027`
- utworzono plik:
  - `01_ZASADY_PRACY.md`
- utworzono plik:
  - `02_STATUS_PROJEKTU.md`
- utworzono plik:
  - `03_DECYZJE.md`
- ustalono tryb pracy:
  - jedno zadanie na raz
  - użytkownik wykonuje krok
  - po sukcesie pisze `OK`
  - po błędzie opisuje problem
- zapisano podstawowe założenia projektu
- zapisano decyzje projektowe

Status:

- działa
- pamięć projektowa w Obsidianie została rozpoczęta

Następny krok:

- utworzyć plik `05_MAPA_PLIKOW.md`
---

## 2026-06-30

### v0.1.0 — Pierwszy działający skrypt Apps Script

Wykonano:

- utworzono folder `apps-script`
- utworzono plik `00_CONFIG.gs`
- utworzono plik `01_DNI_WOLNE.gs`
- przeniesiono oba pliki do Apps Script
- nazwano projekt Apps Script `GA_Umowy_2026_2027`
- uruchomiono funkcję `gaCreateDaysOffSheet`
- utworzono arkusz `Dni_wolne_26_27`
- utworzono arkusz `GA_Log`
- zapisano pierwszy log techniczny w arkuszu `GA_Log`

Status:

- działa
- wersja projektu podniesiona do `v0.1.0`

Następny krok:

- przygotować konfigurację roku szkolnego i parametrów umów
---

## 2026-06-30

### v0.2.0 — Arkusz konfiguracji roku szkolnego i umów

Wykonano:

- utworzono plik `02_KONFIGURACJA.gs`
- dodano funkcję `gaCreateConfigSheet`
- zaktualizowano menu `GA Umowy`
- przeniesiono nowy plik do Apps Script
- uruchomiono funkcję `gaCreateConfigSheet`
- utworzono arkusz `Konfiguracja_26_27`
- zapisano log techniczny w arkuszu `GA_Log`

Status:

- działa
- wersja projektu podniesiona do `v0.2.0`

Następny krok:

- przygotować arkusz danych wejściowych uczniów i kursów
## 2026-07-02 — v0.3.0

### Dodano
- Utworzono plik `03_DANE_WEJSCIOWE.gs`.
- Dodano funkcję `gaCreateInputSheet`.
- Dodano arkusz `Dane_wejsciowe_26_27`.
- Dodano pozycję menu `03. Utwórz / odśwież dane wejściowe`.

### Poprawiono
- Dodano `INPUT: 'Dane_wejsciowe_26_27'` do `GA_CONFIG.SHEETS`.
## 2026-07-02 — v0.4.0

### Dodano
- Utworzono plik `04_WALIDACJE.gs`.
- Dodano funkcję `gaApplyInputValidations`.
- Dodano walidacje danych dla arkusza `Dane_wejsciowe_26_27`.
- Dodano listy wyboru dla kolumn: `Typ_kursu`, `Przedmiot`, `Poziom`, `Liczba_rat`, `Status`.
- Dodano format kwoty dla kolumn: `Cena_miesięczna`, `Rabat`.
- Dodano pozycję menu `04. Dodaj walidacje danych`.
