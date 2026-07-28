# Wersja v0.5.1

Data zamknięcia: 2026-07-02

## Zakres wersji

Wersja obejmuje zakończenie prac nad obsługą kolumny `Liczba_miesięcy` w arkuszu danych wejściowych.

## Wykonane zmiany

- Dodano kolumnę `Liczba_miesięcy` w arkuszu `Dane_wejsciowe_26_27`.
- Dodano nagłówek `Liczba_miesięcy` w pliku `03_DANE_WEJSCIOWE.gs`.
- Dodano walidację kolumny `Liczba_miesięcy` w pliku `04_WALIDACJE.gs`.
- Zakres walidacji: liczba od `1` do `12`.
- Poprawiono zgodność nazwy kolumny `ID_Ucznia` w obliczeniach finansowych.
- Uruchomiono walidacje danych.
- Przetestowano obliczenia finansowe.
- Zaktualizowano dokumentację Obsidian.

## Pliki objęte wersją

### Kod Apps Script

- `00_KONFIGURACJA.gs`
- `01_MENU.gs`
- `02_INIT.gs`
- `03_DANE_WEJSCIOWE.gs`
- `04_WALIDACJE.gs`
- `05_OBLICZENIA.gs`

### Dokumentacja

- `02_STATUS_PROJEKTU.md`
- `04_LOG_POSTEPU.md`
- `05_MAPA_PLIKOW.md`

## Status

`v0.5.1` zamknięta.

## Uwagi

To jest punkt kontrolny przed dalszym rozwojem projektu.
