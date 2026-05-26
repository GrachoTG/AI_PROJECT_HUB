# TASKS — AI Context System

## Status ogólny

Bazowa struktura systemu kontekstu AI w Obsidian została utworzona.

Aktualny etap:

`backup_before_github`

---

## Zadania wykonane

- [x] Utworzono strukturę vaulta `AI_PROJECT_HUB`
- [x] Utworzono folder `00_SYSTEM`
- [x] Utworzono `WORK_RULES.md`
- [x] Utworzono `01_GLOBAL_CONTEXT`
- [x] Utworzono `GLOBAL_CONTEXT.md`
- [x] Utworzono folder `BUSINESS_CONTEXT`
- [x] Utworzono `BUSINESS_CONTEXT_INDEX.md`
- [x] Utworzono `OWNER_PROFILE.md`
- [x] Utworzono `STRATEGIC_GOALS.md`
- [x] Utworzono `DECISION_FILTERS.md`
- [x] Utworzono `BUSINESS_PORTFOLIO.md`
- [x] Utworzono `ROLES.md`
- [x] Utworzono `ACTIVE_PROJECTS.md`
- [x] Dodano obowiązkowe użycie kontekstu biznesowego do `WORK_RULES.md`
- [x] Dodano kontekst biznesowy do `GLOBAL_CONTEXT.md`
- [x] Utworzono folder `99_BACKUPS`
- [x] Utworzono `99_BACKUPS/README.md`
- [x] Zaktualizowano `PROJECT_MEMORY.md`

---

## Zadania najbliższe

### 1. Backup folderu głównego Obsidian

Status: `done`

Zakres:
- [x] wykonano ręczną kopię całego folderu `AI_PROJECT_HUB`,
- [x] nazwano backup według schematu:

`AI_PROJECT_HUB_BACKUP_YYYY-MM-DD_HH-MM`

- [x] zapisano backup poza folderem głównym,
- [x] opcjonalnie skopiować na dysk zewnętrzny lub chmurę.

---

### 2. GitHub / wersjonowanie

Status: `after_backup`

Zakres:
- utworzyć prywatne repozytorium GitHub,
- zainicjować Git w folderze vaulta,
- dodać `.gitignore`,
- wykonać pierwszy commit,
- wypchnąć repozytorium na GitHub.

---

### 3. Automatyzacja aktualizacji kontekstu

Status: `later`

Zakres:
- zaprojektować prosty workflow aktualizacji plików po sesji AI,
- docelowo wykorzystać n8n / skrypty / VPS.

---

### 4. RAG / baza wektorowa

Status: `later`

Zakres:
- dobrać bazę wektorową,
- podłączyć vault jako źródło wiedzy,
- umożliwić agentom AI wyszukiwanie kontekstu projektowego.

---

## Zadania wstrzymane

- rozbudowane automatyzacje,
- VPS,
- n8n,
- baza wektorowa,
- agenci AI.

Powód:
Najpierw musi istnieć stabilny backup i wersjonowanie.

