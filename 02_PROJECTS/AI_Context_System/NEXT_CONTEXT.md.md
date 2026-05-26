# NEXT_CONTEXT — AI_Context_System

## Aktualny status

Status projektu:

`daily_git_workflow_setup_completed`

Zakończone etapy:
- `manual_backup_completed`
- `github_versioning_completed`
- `daily_git_workflow_setup_completed`

Repozytorium GitHub:

`https://github.com/GrachoTG/AI_PROJECT_HUB.git`

Folder lokalny:

`D:\obsidian\sejf\AI_PROJECT_HUB`

---

## Co zostało zrobione

Wykonano:
- ręczny backup folderu `AI_PROJECT_HUB`,
- konfigurację prywatnego repozytorium GitHub,
- inicjalizację lokalnego Git,
- pierwszy commit i push,
- procedurę codziennej pracy z Git w pliku `GIT_WORKFLOW.md`,
- commit i push procedury Git workflow,
- aktualizację dokumentacji projektowej.

---

## Ważne pliki

```text
02_PROJECTS/AI_Context_System/PROJECT_MEMORY.md
02_PROJECTS/AI_Context_System/TASKS.md
02_PROJECTS/AI_Context_System/LOG.md
02_PROJECTS/AI_Context_System/DECISIONS.md
02_PROJECTS/AI_Context_System/GIT_WORKFLOW.md
```

---

## Obowiązujące zasady

Praca z tym projektem ma być prowadzona według zasad:
- jedno zadanie na raz,
- prosto, bez przeinżynierowania,
- najpierw backup / Git przy większych zmianach,
- dokumentować decyzje,
- commit po istotnym bloku pracy,
- push po zakończeniu sesji,
- nie commitować backupów, cache, tokenów, haseł ani kluczy API.

---

## Standardowa procedura Git

```powershell
cd "D:\obsidian\sejf\AI_PROJECT_HUB"
git status
git add .
git commit -m "Opis zmian"
git push
```

Szczegóły:

```text
02_PROJECTS/AI_Context_System/GIT_WORKFLOW.md
```

---

## Następny możliwy etap

`context_refresh_protocol`

Cel:
- stworzyć prostą procedurę odświeżania kontekstu dla nowych sesji AI,
- określić, które pliki AI ma czytać na starcie,
- określić, jak kończyć sesję,
- ograniczyć utratę kontekstu między rozmowami.

---

## Start kolejnej sesji

Na początku kolejnej sesji AI wklej:

```text
Pracujemy nad AI_Context_System.
Przeczytaj kontekst z:
- NEXT_CONTEXT.md
- PROJECT_MEMORY.md
- TASKS.md
- LOG.md
- DECISIONS.md
- GIT_WORKFLOW.md

Aktualny status: daily_git_workflow_setup_completed.
Kontynuujemy od etapu: context_refresh_protocol.
```
