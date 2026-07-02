# Status projektu — Gregor Academy Umowy 2026/2027

## Aktualna wersja

v0.0.1

## Cel główny

Stworzyć system w Google Sheets / Google Apps Script, który automatycznie generuje umowy na rok szkolny 2026/2027 na podstawie danych z arkusza zapisów.

## Tryb pracy

Pracujemy metodą jedno zadanie na raz:

1. Asystent daje jeden komunikat / jedną instrukcję.
2. Użytkownik wykonuje.
3. Jeśli działa, użytkownik pisze: OK.
4. Jeśli nie działa, użytkownik opisuje problem.
5. Dopiero po potwierdzeniu przechodzimy dalej.

## Zasoby projektu

### Google Sheets

Arkusz zapisów:

https://docs.google.com/spreadsheets/d/1rDvjaneoaFPi75Xzgc3u2fX95IPqaIZ3T0xKLegig3I/edit

Nazwa arkusza z zapisami:

Zapisy

### Google Drive

Folder na PDF-y:

https://drive.google.com/drive/u/0/folders/1qEV1gRlfTYvF-kySW13V0tiCVH29X2DY

ID folderu:

1qEV1gRlfTYvF-kySW13V0tiCVH29X2DY

### Plik Excel źródłowy

2026_umowa.xlsx

Zawiera arkusze:

- Kal_26_27
- Lista
- Wzór

## Założenia roku szkolnego 2026/2027

Rozpoczęcie zajęć:

2026-09-07

Zakończenie zajęć dla kursów egzaminacyjnych:

2027-04-30

Dotyczy:

- przygotowanie do Państwowego Egzaminu 8-klasisty
- przygotowanie do matury

Zakończenie zajęć dla pozostałych kursów:

2027-05-31

Bazowa liczba dni dydaktycznych:

32

## Dni wolne

### Przerwy

| Nazwa | Od | Do |
|---|---|---|
| Zimowa przerwa świąteczna | 2026-12-23 | 2027-01-06 |
| Ferie zimowe | 2027-02-15 | 2027-02-28 |
| Wiosenna przerwa świąteczna | 2027-03-25 | 2027-03-30 |

### Święta i dni wolne

| Nazwa | Data |
|---|---|
| Wszystkich Świętych | 2026-11-01 |
| Święto Niepodległości | 2026-11-11 |
| Trzech Króli | 2027-01-06 |
| Święto Pracy | 2027-05-01 |
| Święto Konstytucji 3 Maja | 2027-05-03 |
| Boże Ciało | 2027-05-27 |

## Typy grup i intensywność

| Grupa | Kurs standardowy | Kurs intensywny |
|---|---|---|
| Ix1 | 1h/tydz | 2h/tydz |
| Ix2 | 1h/tydz | 2h/tydz |
| Ix3 | 1h/tydz | 2h/tydz |
| Z | 2h/tydz | 4h/tydz |

## Decyzja dotycząca generowania umów

Umowy mają powstawać w dwóch formach:

1. jako nowy arkusz w Google Sheets,
2. jako plik PDF zapisany w Google Drive.

## Wykonane etapy

### v0.0.1

- Utworzono folder projektu w Obsidianie.
- Utworzono plik `01_ZASADY_PRACY.md`.
- Ustalono tryb pracy: jedno zadanie na raz.
- Utworzono plik `02_STATUS_PROJEKTU.md`.

## Następny krok

Utworzyć plik `03_DECYZJE.md` w Obsidianie.
## Aktualny status

Projekt działa w wersji:

`v0.1.0`

Wykonano:

- utworzono pamięć projektową w Obsidianie
- utworzono mapę plików projektu
- utworzono folder `apps-script`
- utworzono plik `apps-script/00_CONFIG.gs`
- utworzono plik `apps-script/01_DNI_WOLNE.gs`
- przeniesiono kod do Apps Script
- uruchomiono funkcję `gaCreateDaysOffSheet`
- automatycznie utworzono arkusz `Dni_wolne_26_27`
- automatycznie utworzono arkusz `GA_Log`
- potwierdzono działanie pierwszego skryptu

## Aktualna wersja

`v0.1.0`

## Następny krok

Utworzyć arkusz `Konfiguracja_26_27` z parametrami roku szkolnego i umów.
## Aktualny status

Projekt działa w wersji:

`v0.2.0`

Wykonano:

- utworzono pamięć projektową w Obsidianie
- utworzono mapę plików projektu
- utworzono folder `apps-script`
- utworzono plik `apps-script/00_CONFIG.gs`
- utworzono plik `apps-script/01_DNI_WOLNE.gs`
- utworzono plik `apps-script/02_KONFIGURACJA.gs`
- przeniesiono kod do Apps Script
- uruchomiono funkcję `gaCreateDaysOffSheet`
- automatycznie utworzono arkusz `Dni_wolne_26_27`
- automatycznie utworzono arkusz `GA_Log`
- uruchomiono funkcję `gaCreateConfigSheet`
- automatycznie utworzono arkusz `Konfiguracja_26_27`
- potwierdzono działanie konfiguracji

## Aktualna wersja

`v0.2.0`

## Następny krok

Utworzyć arkusz danych wejściowych uczniów i kursów.
`v0.3.0`
- Za pomocą funkcji `gaCreateInputSheet`,
- Dodano arkusz `Dane_wejsciowe_26_27`.

v0.4.0
- utworzono moduł walidacji - 04_WALIDACJE.gs
- oraz funkcję - gaApplyInputValidations

v0.5.0
- utworzono moduł - 05_OBLICZENIA.gs
- oraz funkcję -  gaCalculateContractValues_
roundMoney_
gaTestCalculateContractValues

## Status projektu

Aktualna wersja: `v0.5.1`

Stan: po dodaniu i przetestowaniu obsługi kolumny `Liczba_miesięcy`.

Ostatnio wykonane:
- poprawiono zgodność nazwy kolumny `ID_Ucznia` w obliczeniach,
- dodano kolumnę `Liczba_miesięcy` w arkuszu `Dane_wejsciowe_26_27`,
- dodano nagłówek `Liczba_miesięcy` w pliku `03_DANE_WEJSCIOWE.gs`,
- dodano walidację kolumny `Liczba_miesięcy` w pliku `04_WALIDACJE.gs`,
- uruchomiono walidacje danych,
- uruchomiono obliczenia finansowe.

Aktualny etap: `v0.5.1` zamknięta.
