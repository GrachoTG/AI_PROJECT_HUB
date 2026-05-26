# NEXT_CONTEXT — AI Context System

## Cel pliku

Ten plik służy do przeniesienia pracy do nowego okna kontekstowego.

Nowy czat powinien rozpocząć od przeczytania tego pliku oraz wskazanych plików źródłowych.

---

## Aktualny status

Projekt: `AI_Context_System`

Etap: `backup_before_github`

Stan:

- bazowa struktura vaulta Obsidian `AI_PROJECT_HUB` została utworzona,
- systemowe zasady pracy zostały zapisane,
- globalny kontekst został zapisany,
- kontekst biznesowy użytkownika został uzupełniony,
- lista aktywnych projektów została dodana,
- folder backupu został przygotowany,
- pliki operacyjne projektu zostały zaktualizowane.

---

## Najważniejsze zasady pracy

- jedno zadanie na raz,
- krótkie odpowiedzi,
- brutalna uczciwość,
- brak pustych pochwał,
- oszczędność tokenów,
- używanie kontekstu biznesowego przy decyzjach,
- filtrowanie rozproszeń,
- preferencja dla rozwiązań darmowych,
- automatyzacja etapowa,
- GitHub dopiero po backupie,
- VPS/n8n/RAG dopiero po wersjonowaniu.

---

## Pliki do przeczytania w nowym czacie

W pierwszej kolejności:

1. `00_SYSTEM/WORK_RULES.md`
2. `01_GLOBAL_CONTEXT/GLOBAL_CONTEXT.md`
3. `01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/BUSINESS_CONTEXT_INDEX.md`
4. `01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/OWNER_PROFILE.md`
5. `01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/STRATEGIC_GOALS.md`
6. `01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/DECISION_FILTERS.md`
7. `01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/ACTIVE_PROJECTS.md`
8. `02_PROJECTS/AI_Context_System/PROJECT_BRIEF.md`
9. `02_PROJECTS/AI_Context_System/PROJECT_MEMORY.md`
10. `02_PROJECTS/AI_Context_System/TASKS.md`
11. `02_PROJECTS/AI_Context_System/DECISIONS.md`
12. `02_PROJECTS/AI_Context_System/LOG.md`

---
## Ważne ograniczenie techniczne

Nowy czat nie ma bezpośredniego dostępu do plików Obsidian ani do ścieżek lokalnych.

Samo podanie listy plików nie wystarcza.

Użytkownik powinien:
- wkleić treść kluczowych plików do czatu,
- albo dołączyć je jako załączniki, jeśli interfejs to obsługuje.

Minimalny zestaw kontekstu na start:
1. `02_PROJECTS/AI_Context_System/NEXT_CONTEXT.md`
2. `00_SYSTEM/WORK_RULES.md`
3. `01_GLOBAL_CONTEXT/GLOBAL_CONTEXT.md`
4. `02_PROJECTS/AI_Context_System/TASKS.md`
5. `02_PROJECTS/AI_Context_System/PROJECT_BRIEF.md`

Pozostałe pliki należy dostarczać dopiero wtedy, gdy są potrzebne.

## Następne zadanie

Wykonać backup całego vaulta Obsidian:

`AI_PROJECT_HUB/`

Nazwa backupu:

`AI_PROJECT_HUB_BACKUP_YYYY-MM-DD_HH-MM`

Backup powinien być zapisany poza vaultem.

Minimalnie:
- lokalnie na komputerze poza folderem vaulta.

Lepiej:
- lokalnie poza vaultem,
- dodatkowo na dysku zewnętrznym lub w chmurze.

---

## Po backupie

Następny etap:

`github_versioning`

Zakres:
- utworzenie prywatnego repozytorium GitHub,
- inicjalizacja Git w vaultcie,
- dodanie `.gitignore`,
- pierwszy commit,
- push na GitHub,
- ustalenie podstawowej procedury pracy z wersjami.

---

## Komunikat startowy do nowego czatu

Wklej do nowego czatu:

```text
Pracujemy nad projektem AI_Context_System w vaultcie Obsidian AI_PROJECT_HUB.

Aktualny etap: backup_before_github.

Najpierw przeczytaj i uwzględnij:
- 00_SYSTEM/WORK_RULES.md
- 01_GLOBAL_CONTEXT/GLOBAL_CONTEXT.md
- 01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/BUSINESS_CONTEXT_INDEX.md
- 01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/OWNER_PROFILE.md
- 01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/STRATEGIC_GOALS.md
- 01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/DECISION_FILTERS.md
- 01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/ACTIVE_PROJECTS.md
- 02_PROJECTS/AI_Context_System/PROJECT_BRIEF.md
- 02_PROJECTS/AI_Context_System/PROJECT_MEMORY.md
- 02_PROJECTS/AI_Context_System/TASKS.md
- 02_PROJECTS/AI_Context_System/DECISIONS.md
- 02_PROJECTS/AI_Context_System/LOG.md

Zasady pracy:
- jedno zadanie na raz,
- krótko,
- konkretnie,
- bez pochwał,
- brutalna uczciwość,
- filtr rozproszeń,
- Bez pochwał.
- Fakty, ryzyka, decyzje.
- Użytkownik jest laikiem technicznym.
- Każdy krok ma mieć oczekiwany efekt.
- Nie przechodzimy dalej bez potwierdzenia.
- priorytet: przychód, oszczędność czasu, aktywa, redukcja chaosu,
- rozwiązania darmowe preferowane,
- GitHub dopiero po backupie.

Następne zadanie: przeprowadzić backup całego vaulta AI_PROJECT_HUB poza folderem vaulta.
```
