# PROJECT_MEMORY

## Aktualny stan
Budowana jest ręczna baza pamięci projektowej w Obsidian.

## Wykonane
- Zainstalowano Obsidian.
- Utworzono vault: AI_PROJECT_HUB.
- Utworzono foldery główne:
  - 00_SYSTEM
  - 01_GLOBAL_CONTEXT
  - 02_PROJECTS
  - 03_MODULES
  - 04_DECISIONS
  - 05_TASKS
  - 06_LOGS
  - 07_PROMPTS
  - 08_ARCHIVE
- Utworzono plik zasad pracy:
  - 00_SYSTEM/WORK_RULES.md
- Utworzono plik kontekstu globalnego:
  - 01_GLOBAL_CONTEXT/GLOBAL_CONTEXT.md
- Utworzono projekt:
  - 02_PROJECTS/AI_Context_System
- Utworzono plik:
  - PROJECT_BRIEF.md

## Decyzje
- Rdzeń systemu na start: Obsidian + Markdown.
- VPS i n8n zostaną użyte później do automatyzacji.
- Hosting współdzielony nie będzie rdzeniem systemu.
- Pracujemy jedno zadanie naraz.
- Po etapach aktualizujemy pamięć projektu.

## Otwarte problemy
- Brak jeszcze plików:
  - TASKS.md
  - DECISIONS.md
  - LOG.md
  - NEXT_CONTEXT.md
- Brak backupu.
- Brak GitHub.
- Brak automatyzacji n8n.
- Brak RAG/agenta AI.

## Następny krok
Utworzyć pliki operacyjne projektu.

---

## Aktualizacja 2026-05-25 — Szablony promptów

Wykonano:
- Utworzono folderową bazę projektu w Obsidian.
- Uzupełniono podstawowe pliki operacyjne projektu:
  - TASKS.md
  - DECISIONS.md
  - LOG.md
  - NEXT_CONTEXT.md
- Utworzono szablony promptów:
  - START_NEW_CONTEXT.md
  - UPDATE_PROJECT_MEMORY.md
  - TECH_DECISION.md
  - TASK_PLANNER.md

Status:
- Ręczna baza wiedzy działa.
- Projekt można przenosić między czatami przez NEXT_CONTEXT.md.
- Podstawowe prompty operacyjne są gotowe.

Następny krok:
- Zaplanować prosty system backupu vaulta Obsidian.
---

## Aktualizacja 2026-05-25 — Założenie automatyzacji

Przyjęto założenie, że ręczna aktualizacja plików w Obsidian jest etapem przejściowym.

Docelowo system ma automatyzować:
- aktualizację PROJECT_MEMORY.md,
- aktualizację LOG.md,
- aktualizację TASKS.md,
- przygotowanie NEXT_CONTEXT.md,
- archiwizację decyzji,
- synchronizację danych między narzędziami.

Kolejność wdrożenia:
1. Backup.
2. Wersjonowanie.
3. Automatyzacja.
4. RAG/agenci AI.
---

## Aktualizacja 2026-05-25 — Wersjonowanie

Przyjęto, że system musi mieć możliwość odtworzenia ostatniej stabilnej wersji.

Planowane podejście:
- Git lokalnie.
- Prywatne repozytorium GitHub.
- Regularny backup vaulta.
- Procedura cofania zmian po błędnej aktualizacji.

Status:
- Wersjonowanie jest planowane po wdrożeniu podstawowego backupu.
---

## Aktualizacja — 2026-05-25

Wykonano etap budowy bazowego systemu kontekstu AI w Obsidian.

Utworzono i/lub zaktualizowano:

- `00_SYSTEM/WORK_RULES.md`
- `01_GLOBAL_CONTEXT/GLOBAL_CONTEXT.md`
- `01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/BUSINESS_CONTEXT_INDEX.md`
- `01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/OWNER_PROFILE.md`
- `01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/STRATEGIC_GOALS.md`
- `01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/DECISION_FILTERS.md`
- `01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/BUSINESS_PORTFOLIO.md`
- `01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/ROLES.md`
- `01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/ACTIVE_PROJECTS.md`
- `99_BACKUPS/README.md`

Ustalono główne zasady pracy:

- jedno zadanie na raz,
- krótkie odpowiedzi,
- brutalna uczciwość,
- oszczędność tokenów,
- obowiązkowe użycie kontekstu biznesowego,
- filtrowanie rozproszeń,
- priorytet działań wspierających aktywne projekty,
- preferencja dla rozwiązań darmowych,
- automatyzacja etapowa.

Aktualny stan:

- vault Obsidian `AI_PROJECT_HUB` ma gotową strukturę bazową,
- kontekst biznesowy jest wypełniony,
- lista aktywnych projektów została dodana,
- folder backupu został przygotowany,
- dalsze ręczne rozbudowywanie plików ma malejący sens,
- następny realny etap to backup całego vaulta i wdrożenie GitHub.
## 2026-05-26 — Backup przed GitHubem zakończony

Etap `backup_before_github` został zakończony.

Wykonano ręczny backup całego folderu głównego Obsidian:

`AI_PROJECT_HUB`

Backup zapisano poza folderem głównym pod nazwą zgodną ze schematem:

`AI_PROJECT_HUB_BACKUP_2026-05-26_07-36`

Backup został sprawdzony — zawiera główne foldery systemu:
- `00_SYSTEM`
- `01_GLOBAL_CONTEXT`
- `02_PROJECTS`
- `99_BACKUPS`

Minimalny warunek bezpieczeństwa przed przejściem do GitHub został spełniony.

Następny etap projektu:

`github_versioning`
