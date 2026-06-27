# ARCHITECTURE_AUDIT

Generated: 2026-06-27T17:56:26

## Purpose

Audit package for rebuilding AI_Context_System context architecture.


---

## FILE: 00_SYSTEM/AI_WORK_PROTOCOL.md

````text
## Nadrzędna zasada pracy: jedno zadanie na raz

AI ma prowadzić użytkownika metodą pojedynczych kroków.

Schemat pracy:
1. Użytkownik mówi, co chce osiągnąć.
2. AI podaje tylko jeden najbliższy krok.
3. AI opisuje krótko oczekiwany efekt.
4. Użytkownik wykonuje krok.
5. Użytkownik potwierdza efekt albo zgłasza problem.
6. AI nie podaje kolejnych kroków, dopóki poprzedni nie jest potwierdzony.

Zakaz:
- podawania wielu kroków naraz,
- zasypywania użytkownika opcjami,
- zakładania, że użytkownik wie, co zrobić,
- rozwijania tematów pobocznych bez potrzeby.

Cel:
Oszczędzać tokeny, czas, pieniądze i uwagę użytkownika.

## Zasada brutalnej szczerości

AI ma mówić prawdę wprost, bez pocieszania i bez pochwał.

Jeżeli pomysł jest:
- słaby,
- zbyt kosztowny,
- zbyt trudny,
- nieopłacalny,
- oderwany od celu głównego,
- technicznie nierealny na obecnym etapie,

AI ma to powiedzieć jasno.

AI ma najpierw szukać prostszego rozwiązania.
Jeżeli rozwiązania nie ma, AI ma to powiedzieć wprost i zaproponować alternatywę.

Format oceny pomysłu:

OCENA:
dobry / średni / słaby / nieopłacalny / nierealny

POWÓD:
krótko i konkretnie

NAJPROSTSZY NASTĘPNY KROK:
jedna rzecz do wykonania

## AKTUALIZACJA OBSIDIAN — 2026-06-26 15:58

### Plik
`00_SYSTEM/AI_WORK_PROTOCOL.md`

### Działanie
Dodano i zapisano w repozytorium główny protokół pracy AI.

### Treść
Utworzono poprawny plik protokołu:

`00_SYSTEM/AI_WORK_PROTOCOL.md`

Usunięto błędne duplikaty z katalogu głównego:

- `AI_WORK_PROTOCOL.md.md`
- `AI_WORK_PROTOCOL.md`

Zatwierdzono i wypchnięto zmiany do GitHub:

`https://github.com/GrachoTG/AI_PROJECT_HUB.git`

### Wersja
- branch: `main`
- commit: `032fc49`

### Status Git
Repozytorium zsynchronizowane z GitHubem.

### Następny krok
Przejść do automatyzacji przepływu:

`Obsidian → GitHub → n8n/VPS`

Najpierw ustalić bezpieczny mechanizm aktualizacji repozytorium bez przekazywania tokenów i sekretów w czacie.

````

---

## FILE: 00_SYSTEM/WORK_RULES.md

````text
# WORK_RULES

## Tryb pracy
- Jedno zadanie naraz.
- Krótkie odpowiedzi.
- Bez pochwał i lania wody.
- Fakty, ryzyka, decyzje.
- Jeśli pomysł jest zły: powiedzieć wprost.
- Jeśli czegoś nie da się zrobić: powiedzieć wprost i zaproponować obejście.
- Użytkownik jest laikiem: instrukcje mają być proste.
- Każdy krok musi mieć oczekiwany efekt.
- Śledzić zajętość okna kontekstowego, gdy przekracza 55%, zaproponować podsumowanie i przeniesienie do nowego czatu

## Procedura
1. Użytkownik mówi, co chce osiągnąć.
2. Asystent mówi, co zrobić teraz.
3. Asystent podaje oczekiwany efekt.
4. Użytkownik wykonuje.
5. Jeśli efekt zgodny: następny krok.
6. Jeśli nie: naprawiamy bieżący krok.
7. Nie przechodzimy dalej bez potwierdzenia.

## Oszczędność tokenów
- Bez długich wyjaśnień, jeśli nie są konieczne.
- Nie podawać wielu ścieżek naraz.
- Najpierw decyzja, potem wykonanie.
- Stosować listy i krótkie zdania.

---

## Kontrola zgodności z celami

Asystent ma pilnować, czy proponowane działania wspierają nadrzędne cele użytkownika.

Jeżeli działanie:
- wygląda jak rozproszenie,
- nie ma jasnego związku z celem,
- jest zbyt skomplikowane na obecny etap,
- generuje koszt bez uzasadnienia,
- zwiększa chaos operacyjny,

asystent ma jasno to zakomunikować.

Preferowane komunikaty:
- "To wygląda jak rozproszenie."
- "To nie wspiera aktualnego priorytetu."
- "To może być dobry pomysł później, ale nie teraz."
- "Brakuje związku z celem biznesowym."
- "To zwiększy chaos zamiast go zmniejszyć."

---

## Kontrola okna kontekstowego

Asystent ma monitorować długość rozmowy i ryzyko utraty spójności kontekstu.

Jeżeli rozmowa staje się długa, pojawia się wiele decyzji, zadań lub ustaleń, asystent ma ostrzec użytkownika.

Próg roboczy:
- Przy około 55% przewidywanego zużycia kontekstu asystent ma zaproponować przygotowanie pakietu przeniesienia do nowego czatu.

Ponieważ dokładny procent może nie być dostępny, asystent stosuje ocenę przybliżoną.

Forma komunikatu:
"Zbliżamy się do poziomu, przy którym warto przygotować przeniesienie kontekstu. Proponuję zaktualizować PROJECT_MEMORY.md i NEXT_CONTEXT.md."

Przy długich sesjach asystent ma pilnować:
- aktualizacji PROJECT_MEMORY.md,
- aktualizacji LOG.md,
- aktualizacji TASKS.md,
- przygotowania NEXT_CONTEXT.md.


## Aktualizacja pamięci projektu
Po ważnym etapie asystent generuje blok:

AKTUALIZACJA PAMIĘCI

Użytkownik dopisuje go do właściwego pliku projektu, asystent podaje instrukcje jak to zrobić.

---

## Obowiązkowe użycie kontekstu biznesowego

AI ma obowiązek uwzględniać kontekst biznesowy użytkownika przy:

- ocenie pomysłów,
- planowaniu nowych projektów,
- rekomendowaniu narzędzi,
- priorytetyzacji zadań,
- projektowaniu automatyzacji,
- ocenie kosztów,
- decyzjach technicznych,
- decyzjach marketingowych.

Punkt startowy kontekstu biznesowego:

`01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/BUSINESS_CONTEXT_INDEX.md`

---

## Filtr rozproszeń

Jeżeli użytkownik proponuje nowe działanie, AI ma sprawdzić:

1. Czy to wspiera aktywny biznes?
2. Czy to zwiększa przychód?
3. Czy to oszczędza czas?
4. Czy to buduje aktywo?
5. Czy to zmniejsza chaos?
6. Czy to da się zautomatyzować?
7. Czy to jest właściwy moment?

Jeżeli odpowiedź brzmi głównie "nie", AI ma jasno napisać:

**To wygląda jak rozproszenie.**

---

## Domyślna rekomendacja AI

Jeżeli działanie nie ma jasnego związku z:
- przychodem,
- oszczędnością czasu,
- budową aktywa,
- redukcją chaosu,
- aktywnym biznesem,

domyślna rekomendacja brzmi:

**Odłożyć albo odrzucić.**

````

---

## FILE: 02_PROJECTS/AI_Context_System/GIT_WORKFLOW.md

````text
# Git workflow dla AI_PROJECT_HUB

Status: `active`

Repozytorium:

`https://github.com/GrachoTG/AI_PROJECT_HUB.git`

Folder lokalny:

`D:\obsidian\sejf\AI_PROJECT_HUB`

---

## Cel

Ten plik opisuje prostą, codzienną procedurę używania Git dla folderu głównego Obsidian `AI_PROJECT_HUB`.

Celem nie jest perfekcyjny Git Flow.

Celem jest:
- nie tracić zmian,
- móc cofnąć błędy,
- mieć kopię na GitHub,
- ograniczyć chaos,
- nie komplikować pracy.

---

## Zasada główna

Po każdym istotnym bloku pracy:

1. sprawdź status,
2. dodaj zmiany,
3. zrób commit,
4. wypchnij na GitHub.

---

## Standardowy workflow

W PowerShell przejdź do folderu:

```powershell
cd "D:\obsidian\sejf\AI_PROJECT_HUB"
```

Sprawdź status:

```powershell
git status
```

Dodaj zmiany:

```powershell
git add .
```

Zrób commit:

```powershell
git commit -m "Opis zmian"
```

Wyślij na GitHub:

```powershell
git push
```

---

## Szybka wersja po pracy

```powershell
cd "D:\obsidian\sejf\AI_PROJECT_HUB"
git status
git add .
git commit -m "Update project context"
git push
```

---

## Przed rozpoczęciem pracy

Jeśli pracujesz tylko na jednym komputerze, zwykle wystarczy:

```powershell
cd "D:\obsidian\sejf\AI_PROJECT_HUB"
git status
```

Jeśli pracujesz na więcej niż jednym komputerze, przed zmianami wykonaj:

```powershell
git pull
```

---

## Kiedy robić commit

Commit rób po:
- zakończeniu etapu,
- aktualizacji kilku plików systemowych,
- ważnej decyzji,
- zmianie struktury folderów,
- dodaniu nowych procedur,
- większej sesji z AI.

Nie trzeba robić commita po każdej literówce.

---

## Jak pisać wiadomości commitów

Dobre przykłady:

```text
Update AI_Context_System memory
Add Git workflow procedure
Document GitHub versioning setup
Update project tasks and log
Refine Obsidian vault structure
```

Złe przykłady:

```text
asdf
zmiany
update
final
test
```

---

## Co robić, gdy nie ma zmian

Jeśli po:

```powershell
git status
```

widzisz:

```text
nothing to commit, working tree clean
```

to nie robisz nic.

Nie tworzysz pustego commita.

---

## Co robić, gdy commit mówi `nothing to commit`

To znaczy, że Git nie widzi zmian.

Wykonaj:

```powershell
git status
```

Jeśli jest czysto — koniec.

Jeśli są pliki nieśledzone lub zmodyfikowane — wykonaj:

```powershell
git add .
git commit -m "Update project files"
git push
```

---

## Czego nie commitować

Nie commitować:
- lokalnych backupów,
- plików cache,
- plików workspace Obsidian,
- tokenów,
-

````

---

## FILE: 02_PROJECTS/AI_Context_System/CONTEXT_REFRESH_PROTOCOL.md

````text
# CONTEXT_REFRESH_PROTOCOL — AI_Context_System

## Cel

Ten plik opisuje procedurę odświeżania kontekstu między sesjami AI.

Problem:
- AI traci część kontekstu między rozmowami,
- projekt ma wiele plików systemowych,
- bez procedury rośnie chaos,
- decyzje mogą być powtarzane albo nadpisywane.

Cel procedury:
- szybko odtworzyć aktualny stan projektu,
- wskazać AI, które pliki są źródłem prawdy,
- ograniczyć błędne założenia,
- zakończyć każdą sesję tak, żeby kolejna mogła ruszyć bez zgadywania.

---

## Kiedy używać

Procedury używamy:

- na początku każdej nowej sesji AI,
- po dłuższej przerwie,
- po większych zmianach w strukturze projektu,
- gdy AI zaczyna zgadywać zamiast opierać się na dokumentacji,
- gdy praca przechodzi między różnymi narzędziami AI.

---

## Źródła prawdy

Na starcie sesji AI podstawowe źródła prawdy to:

```text
02_PROJECTS/AI_Context_System/NEXT_CONTEXT.md
02_PROJECTS/AI_Context_System/PROJECT_MEMORY.md
02_PROJECTS/AI_Context_System/TASKS.md
02_PROJECTS/AI_Context_System/LOG.md
02_PROJECTS/AI_Context_System/DECISIONS.md
02_PROJECTS/AI_Context_System/GIT_WORKFLOW.md
02_PROJECTS/AI_Context_System/CONTEXT_REFRESH_PROTOCOL.md
```

Kolejność czytania:

1. `NEXT_CONTEXT.md`
2. `PROJECT_MEMORY.md`
3. `TASKS.md`
4. `LOG.md`
5. `DECISIONS.md`
6. `GIT_WORKFLOW.md`
7. `CONTEXT_REFRESH_PROTOCOL.md`

---

## Start nowej sesji AI

Na początku nowej sesji wklej do AI:

```text
Pracujemy nad AI_Context_System.

Przeczytaj kontekst z następujących plików:

1. 02_PROJECTS/AI_Context_System/NEXT_CONTEXT.md
2. 02_PROJECTS/AI_Context_System/PROJECT_MEMORY.md
3. 02_PROJECTS/AI_Context_System/TASKS.md
4. 02_PROJECTS/AI_Context_System/LOG.md
5. 02_PROJECTS/AI_Context_System/DECISIONS.md
6. 02_PROJECTS/AI_Context_System/GIT_WORKFLOW.md
7. 02_PROJECTS/AI_Context_System/CONTEXT_REFRESH_PROTOCOL.md

Aktualny status projektu jest zapisany w NEXT_CONTEXT.md.

Zasady pracy:
- jedno zadanie na raz,
- krótko i konkretnie,
- bez przeinżynierowania,
- priorytet: przychód, oszczędność czasu, redukcja chaosu,
- nie proponuj nowych narzędzi bez potrzeby,
- po większych zmianach aktualizujemy dokumentację,
- commit po istotnym bloku pracy,
- push po zakończeniu sesji.

Najpierw podsumuj aktualny stan projektu w maksymalnie 10 punktach.
Następnie zaproponuj jedno następne zadanie.
```

---

## Minimalny start awaryjny

Jeśli nie ma czasu na pełne czytanie kontekstu, użyj minimalnego startu:

```text
Pracujemy nad AI_Context_System.

Aktualny status odczytaj z:

- 02_PROJECTS/AI_Context_System/NEXT_CONTEXT.md
- 02_PROJECTS/AI_Context_System/TASKS.md

Nie zgaduj. Jeśli czegoś brakuje, poproś o konkretny plik.

Zaproponuj tylko jedno następne zadanie.
```

---

## Zasada aktualizacji po sesji

Na końcu każdej istotnej sesji należy zaktualizować:

```text
02_PROJECTS/AI_Context_System/PROJECT_MEMORY.md
02_PROJECTS/AI_Context_System/TASKS.md
02_PROJECTS/AI_Context_System/LOG.md
02_PROJECTS/AI_Context_System/NEXT_CONTEXT.md
```

Opcjonalnie, jeśli była decyzja architektoniczna:

```text
02_PROJECTS/AI_Context_System/DECISIONS.md
```

Jeśli zmienił się workflow Git:

```text
02_PROJECTS/AI_Context_System/GIT_WORKFLOW.md
```

Jeśli zmieniła się procedura odświeżania kontekstu:

```text
02_PROJECTS/AI_Context_System/CONTEXT_REFRESH_PROTOCOL.md
```

---

## Checklista końca sesji

Przed zakończeniem sesji AI wykonaj:

```text
[ ] PROJECT_MEMORY.md zaktualizowany
[ ] TASKS.md zaktualizowany
[ ] LOG.md zaktualizowany
[ ] NEXT_CONTEXT.md zaktualizowany
[ ] DECISIONS.md zaktualizowany, jeśli była decyzja
[ ] Git status sprawdzony
[ ] Commit wykonany, jeśli były istotne zmiany
[ ] Push wykonany po zakończonym bloku pracy
```

---

## Procedura końca sesji

1. Podsumuj, co zostało zrobione.
2. Zaktualizuj:
   - `PROJECT_MEMORY.md`
   - `TASKS.md`
   - `LOG.md`
   - `NEXT_CONTEXT.md`
3. Jeśli była decyzja — zaktualizuj `DECISIONS.md`.
4. Sprawdź Git:

```powershell
cd "D:\obsidian\sejf\AI_PROJECT_HUB"
git status
```

5. Jeśli są zmiany:

```powershell
git add .
git commit -m "Update context after session"
git push
```

6. Na końcu zapisz status następnego etapu w `NEXT_CONTEXT.md`.

---

## Standardowy komunikat startowy dla kolejnej sesji

```text
Pracujemy nad AI_Context_System.

Przeczytaj kontekst z:
- NEXT_CONTEXT.md
- PROJECT_MEMORY.md
- TASKS.md
- LOG.md
- DECISIONS.md
- GIT_WORKFLOW.md
- CONTEXT_REFRESH_PROTOCOL.md

Aktualny status jest w NEXT_CONTEXT.md.

Kontynuujemy od etapu wskazanego w NEXT_CONTEXT.md.

Najpierw:
1. Podsumuj aktualny stan projektu.
2. Wskaż jedno następne zadanie.
3. Nie zaczynaj kilku wątków naraz.
```

---

## Zasady anty-chaos

Nie wolno:
- rozpoczynać kilku etapów naraz,
- zmieniać struktury folderów bez decyzji,
- dodawać nowych narzędzi bez potrzeby,
- robić refaktoryzacji „bo można”,
- pomijać aktualizacji `NEXT_CONTEXT.md`,
- zgadywać aktualnego statusu projektu bez sprawdzenia plików kontekstowych.

Wolno:
- upraszczać,
- usuwać nadmiar,
- domykać rozpoczęte etapy,
- dokumentować decyzje,
- proponować najkrótszą skuteczną ścieżkę.

---

## Status

Status procedury:

`context_refresh_protocol_created`

Następny krok:

- zaktualizować dokumentację projektu,
- wykonać commit,
- wypchnąć zmiany do GitHub.

````

---

## FILE: 02_PROJECTS/AI_Context_System/PROJECT_MEMORY.md

````text
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
## 2026-05-26 — GitHub versioning zakończony

Etap `github_versioning` został zakończony.

Vault Obsidian / folder główny projektu:

`D:\obsidian\sejf\AI_PROJECT_HUB`

został połączony z prywatnym repozytorium GitHub:

`https://github.com/GrachoTG/AI_PROJECT_HUB.git`

Wykonano konfigurację Git:

- repozytorium lokalne zainicjalizowane na branchu `main`,
- skonfigurowano lokalnie `user.name=Teddy`,
- skonfigurowano lokalny email Git,
- dodano remote `origin`,
- wykonano pierwszy commit,
- wykonano pierwszy push do GitHub,
- branch `main` śledzi `origin/main`.

Pierwszy commit:

`Initial commit - AI project hub structure`

Status etapu:

`github_versioning_completed`

Następny etap:

`daily_git_workflow_setup`
## 2026-05-26 — Daily Git workflow zakończony

Etap `daily_git_workflow_setup` został zakończony.

Utworzono plik:

`02_PROJECTS/AI_Context_System/GIT_WORKFLOW.md`

Plik opisuje:
- standardowy workflow Git,
- szybką procedurę po pracy,
- zasady commitów,
- czego nie commitować,
- procedurę awaryjną,
- procedurę końca sesji AI.

Wykonano commit:

`Add daily Git workflow procedure`

Zmiany zostały wypchnięte do GitHub:

`https://github.com/GrachoTG/AI_PROJECT_HUB.git`

Status etapu:

`daily_git_workflow_setup_completed`

Następny możliwy etap:

`context_refresh_protocol`
## Context Loader MVP

Projekt posiada działający minimalny loader kontekstu:

```text
tools/build_context.py
```

Loader czyta kluczowe pliki systemowe, globalne i projektowe z Vaulta Obsidian oraz generuje:

```text
AI_START_PROMPT.md
```

Plik `AI_START_PROMPT.md` jest używany jako startowy kontekst dla nowej sesji AI.

Ustalony workflow:

```text
Vault Obsidian
→ tools/build_context.py
→ AI_START_PROMPT.md
→ nowy czat AI
→ praca nad zadaniem
→ aktualizacja pamięci projektu
→ commit/push
```

W ramach porządkowania struktury ujednolicono rozszerzenia plików Markdown:

```text
*.md.md → *.md
```

Od tego momentu nowe pliki Markdown powinny używać wyłącznie rozszerzenia:

```text
.md
```

````

---

## FILE: 02_PROJECTS/AI_Context_System/NEXT_CONTEXT.md

````text
# NEXT_CONTEXT — AI_Context_System

## Aktualny status

Context Loader MVP został uruchomiony.

Działa lokalny workflow:

```text
python .\tools\build_context.py
```

generujący:

```text
AI_START_PROMPT.md
```

Repozytorium jest czyste, a loader jest śledzony przez Git.

## Najbliższe zadanie

Przetestować pełny cykl pracy:

1. uruchomić `tools/build_context.py`,
2. otworzyć nowy czat AI,
3. wkleić zawartość `AI_START_PROMPT.md`,
4. sprawdzić, czy AI poprawnie odtwarza:
   - cel projektu,
   - aktualny status,
   - zasady pracy,
   - jedno następne zadanie.

## Nie robić teraz

- Nie wdrażać jeszcze RAG.
- Nie wdrażać n8n.
- Nie wdrażać agentów.
- Nie komplikować struktury.
- Nie dodawać nowych narzędzi bez potrzeby.

````

---

## FILE: 02_PROJECTS/AI_Context_System/TASKS.md

````text
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

### 2. GitHub versioning

Status: `done`

Zakres:
- [x] utworzono prywatne repozytorium GitHub,
- [x] zainicjalizowano lokalne repozytorium Git,
- [x] skonfigurowano branch `main`,
- [x] skonfigurowano lokalny `user.name`,
- [x] skonfigurowano lokalny email Git,
- [x] utworzono `.gitignore`,
- [x] dodano remote `origin`,
- [x] wykonano pierwszy commit,
- [x] wykonano pierwszy push,
- [x] ustawiono śledzenie `main -> origin/main`.

Repozytorium:

`https://github.com/GrachoTG/AI_PROJECT_HUB.git`

Następne zadanie:

`daily_git_workflow_setup`

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

### 3. Daily Git workflow

Status: `done`

Zakres:
- [x] utworzono `GIT_WORKFLOW.md`,
- [x] opisano standardowy workflow Git,
- [x] opisano szybką procedurę po pracy,
- [x] opisano procedurę przed rozpoczęciem pracy,
- [x] opisano zasady tworzenia commitów,
- [x] opisano czego nie commitować,
- [x] opisano procedurę awaryjną,
- [x] opisano procedurę końca sesji AI,
- [x] wykonano commit,
- [x] wykonano push do GitHub.

Commit:

`Add daily Git workflow procedure`

Status etapu:

`daily_git_workflow_setup_completed`

Następne możliwe zadanie:

`context_refresh_protocol`
### 4. Context Refresh Protocol

Status: `docs_updated`

Zakres:
- [x] utworzono `CONTEXT_REFRESH_PROTOCOL.md`,
- [x] opisano cel procedury,
- [x] opisano kiedy używać procedury,
- [x] wskazano źródła prawdy,
- [x] opisano pełny start nowej sesji AI,
- [x] opisano minimalny start awaryjny,
- [x] opisano zasadę aktualizacji po sesji,
- [x] dodano checklistę końca sesji,
- [x] opisano procedurę końca sesji,
- [x] dodano standardowy komunikat startowy,
- [x] dodano zasady anty-chaos,
- [x] zaktualizować `LOG.md`,
- [x] zaktualizować `NEXT_CONTEXT.md`,
- [ ] wykonać commit,
- [ ] wykonać push do GitHub.

Status etapu:

`context_refresh_protocol_docs_updated`

Następny krok:

`context_refresh_protocol_git_commit`


````

---

## FILE: 02_PROJECTS/AI_Context_System/DECISIONS.md

````text
# DECISIONS

## 2026-05-25

### Decyzja 001 — Obsidian jako baza wiedzy
**Decyzja:** Na start system opiera się na Obsidianie i plikach Markdown.

**Powód:** To najprostszy sposób na lokalną, czytelną i kontrolowaną bazę wiedzy bez budowania aplikacji od zera.

**Konsekwencje:**
- Szybki start.
- Brak zależności od jednej aplikacji AI.
- Łatwe kopiowanie kontekstu do nowych czatów.
- Ręczna aktualizacja na początku.

---

### Decyzja 002 — VPS/n8n później
**Decyzja:** VPS i n8n nie są wdrażane na początku.

**Powód:** Automatyzacja bez stabilnej struktury danych byłaby bałaganem.

**Konsekwencje:**
- Najpierw porządek w plikach.
- Potem automatyzacja.
- Mniejsze ryzyko budowania śmieciowego systemu.

---
### Decyzja 003 — priorytet rozwiązań darmowych

Status: Aktywna

Uzasadnienie:
- Projekt ma być rozwijany etapowo.
- Na początku minimalizujemy koszty.
- Płatne narzędzia będą wdrażane tylko, jeśli rozwiązują konkretny problem.

Konsekwencje:
- Najpierw testujemy rozwiązania lokalne, open-source lub darmowe.
- Koszty infrastruktury muszą być uzasadnione.

### Decyzja 004 — Jedno zadanie naraz
**Decyzja:** Pracujemy metodą jednego zadania naraz.

**Powód:** Użytkownik jest laikiem technicznym, a projekt ma być odporny na chaos.

**Konsekwencje:**
- Wolniej na początku.
- Mniej błędów.
- Lepsza kontrola.
## Decyzja: priorytet rozwiązań darmowych

Status: Aktywna

Uzasadnienie:
- Projekt ma być rozwijany etapowo.
- Na początku minimalizujemy koszty.
- Płatne narzędzia będą wdrażane tylko, jeśli rozwiązują konkretny problem.

Konsekwencje:
- Najpierw testujemy rozwiązania lokalne, open-source lub darmowe.
- Koszty infrastruktury muszą być uzasadnione.

## Decyzja: wymagane wersjonowanie systemu

Status: Planowana

Uzasadnienie:
- System będzie zawierał ważne prompty, decyzje, kontekst biznesowy i projektowy.
- Konieczne jest łatwe odtworzenie ostatniej działającej wersji.
- Historia zmian pozwoli cofać błędne aktualizacje.

Planowane rozwiązanie:
- Git lokalnie.
- Prywatne repozytorium GitHub.
- Regularny backup vaulta.

Konsekwencje:
- Przed większymi zmianami należy tworzyć commit.
- Kluczowe wersje systemu powinny być oznaczane jako stabilne.
## 2026-05-26 — Prywatne repozytorium GitHub dla AI_PROJECT_HUB

Podjęto decyzję o używaniu prywatnego repozytorium GitHub jako systemu wersjonowania folderu głównego Obsidian:

`D:\obsidian\sejf\AI_PROJECT_HUB`

Repozytorium:

`https://github.com/GrachoTG/AI_PROJECT_HUB.git`

Uzasadnienie:
- kontrola wersji dla plików projektowych i kontekstowych,
- możliwość cofania zmian,
- ochrona przed przypadkową utratą struktury,
- lepsza synchronizacja pracy między sesjami AI,
- prywatność danych dzięki repozytorium prywatnemu.

Zasady:
- backup lokalny pozostaje obowiązkowy przed większymi zmianami,
- folder `99_BACKUPS/` nie jest wersjonowany,
- pliki cache/workspace Obsidian nie są wersjonowane,
- commit powinien być wykonywany po istotnych zmianach w systemie,
- push do GitHub powinien być wykonywany po zakończonym bloku pracy.

Status decyzji:

`active`

````

---

## FILE: 03_MODULES/ADVISORY_BOARD/BOARD_PROFILES.md

````text

````

---

## FILE: 07_PROMPTS/ADVISORY_BOARD_REVIEW.md

````text
# ADVISORY_BOARD_REVIEW

## Użycie
Prompt służy do oceny pomysłu przez zestaw perspektyw eksperckich.

---

## Prompt

Oceń poniższy pomysł przez pryzmat rady doradczej złożonej z perspektyw eksperckich.

Pomysł:
[OPIS POMYSŁU]

Kontekst biznesowy:
[OPIS KONTEKSTU]

Aktualny cel nadrzędny:
[CEL]

Oceń z perspektyw:

## 1. Strateg skalowania
- Czy to da się skalować?
- Co blokuje wzrost?

## 2. Ekspert automatyzacji
- Co można zautomatyzować?
- Co jest zbędną pracą ręczną?

## 3. Ekspert sprzedaży
- Czy to zwiększa sprzedaż?
- Czy oferta jest jasna?

## 4. Ekspert MLM / network marketingu
- Czy to wspiera rekrutację, duplikację albo retencję?
- Czy przeciętny partner będzie w stanie to powtórzyć?

## 5. Ekspert finansów i ryzyka
- Jakie są koszty?
- Jakie jest ryzyko straty czasu lub pieniędzy?

## 6. Operator biznesowy
- Co trzeba wykonać operacyjnie?
- Czy to nie stworzy chaosu?

## 7. Brutalny sceptyk
- Dlaczego ten pomysł może być zły?
- Co jest ukrytym problemem?

## 8. Adwokat klienta
- Czy klient tego chce?
- Czy klient rozumie wartość?

## inspiracje:

- Elon Musk → pierwsze zasady, automatyzacja, skalowanie, cięcie złożoności.
- Alex Hormozi → oferta, wartość, sprzedaż, monetyzacja.
- Bill Gates → systemowość, długoterminowa skala, procesy.
- Eric Worre → MLM, rekrutacja, duplikacja, przywództwo.
- Charlie Munger → odwracanie problemu, ryzyko, błędy decyzyjne.
- Peter Drucker → zarządzanie, efektywność, priorytety.
- Naval Ravikant → dźwignia, kod/media/kapitał/ludzie.

Na końcu podaj:

## Werdykt
- Robić teraz / Odłożyć / Odrzucić

## Powód
Maksymalnie 5 zdań.

## Pierwszy krok
Jedno konkretne działanie.

````

---

## FILE: 07_PROMPTS/START_NEW_CONTEXT.md

````text
# START_NEW_CONTEXT

## Użycie
Wklej ten prompt na początku nowego czatu, razem z aktualną treścią pliku NEXT_CONTEXT.md.

---

## Prompt

Przejmujesz projekt na podstawie kontekstu poniżej.

Zasady pracy:
- Pracuj jedno zadanie naraz.
- Odpowiadaj krótko.
- Nie chwal.
- Nie lej wody.
- Mów wprost o ryzykach i błędach.
- Jeśli czegoś brakuje, zapytaj.
- Jeśli widzisz zły pomysł, powiedz to jasno.
- Użytkownik jest laikiem technicznym.
- Każdy krok musi mieć oczekiwany efekt.
- Nie przechodź dalej bez potwierdzenia użytkownika.

Kontekst projektu:

[WKLEJ TUTAJ TREŚĆ NEXT_CONTEXT.md]

Zadanie:
Kontynuuj od następnego kroku.
## Kontrola kontekstu

Monitoruj długość rozmowy.
Jeżeli rozmowa robi się długa lub przekracza około 55% bezpiecznego kontekstu, zaproponuj:
- aktualizację PROJECT_MEMORY.md,
- aktualizację LOG.md,
- aktualizację TASKS.md,
- przygotowanie NEXT_CONTEXT.md,
- przejście do nowego czatu.

````

---

## FILE: 07_PROMPTS/TASK_PLANNER.md

````text
# TASK_PLANNER

## Użycie
Ten prompt służy do rozbicia zadania na małe kroki.

---

## Prompt

Rozbij poniższe zadanie na małe kroki dla laika technicznego.

Zadanie:
[OPIS ZADANIA]

Kontekst:
[OPIS KONTEKSTU]

Odpowiedz w strukturze:

## 1. Cel
Jedno zdanie.

## 2. Założenia
Lista punktów.

## 3. Plan krok po kroku
Każdy krok ma zawierać:
- Co zrobić
- Gdzie to zrobić
- Oczekiwany efekt
- Jak sprawdzić, że działa

## 4. Ryzyka
Lista konkretnych ryzyk.

## 5. Pierwszy krok
Podaj tylko pierwszy krok do wykonania teraz.

Zasady:
- Jedno zadanie naraz.
- Krótko.
- Bez technicznego żargonu, jeśli nie jest konieczny.
- Nie zakładaj wiedzy użytkownika.

````

---

## FILE: 07_PROMPTS/TECH_DECISION.md

````text
# TECH_DECISION

## Użycie
Ten prompt służy do oceny decyzji technicznej przed jej wdrożeniem.

---

## Prompt

Oceń poniższą decyzję techniczną.

Decyzja:
[OPIS DECYZJI]

Kontekst:
[OPIS KONTEKSTU]

Odpowiedz w strukturze:

## 1. Ocena
- Czy decyzja jest sensowna?
- Czy jest za wcześnie?
- Czy są prostsze opcje?

## 2. Ryzyka
- Ryzyko techniczne
- Ryzyko kosztowe
- Ryzyko utrzymania
- Ryzyko chaosu w projekcie

## 3. Alternatywy
Podaj maksymalnie 3 alternatywy.

## 4. Rekomendacja
Podaj jedną konkretną rekomendację.

Zasady:
- Krótko.
- Bez pochwał.
- Brutalnie uczciwie.
- Jeśli pomysł jest zły, powiedz to.
````

---

## FILE: 07_PROMPTS/UPDATE_PROJECT_MEMORY.md

````text
# UPDATE_PROJECT_MEMORY

## Użycie
Ten prompt służy do wymuszenia aktualizacji pamięci projektu po zakończonej sesji lub większym kroku.

---
## Prompt

Na podstawie aktualnej rozmowy przygotuj aktualizację pamięci projektu.

Wygeneruj dokładnie 4 sekcje:

## 1. PROJECT_MEMORY.md — aktualizacja
Podaj gotowy blok Markdown do wklejenia do PROJECT_MEMORY.md.

## 2. TASKS.md — aktualizacja
Podaj gotowy blok Markdown do podmiany albo dopisania w TASKS.md.

## 3. LOG.md — aktualizacja
Podaj gotowy wpis Markdown do LOG.md.

## 4. NEXT_CONTEXT.md — aktualizacja
Podaj pełną, aktualną treść NEXT_CONTEXT.md do podmiany.

Zasady:
- Krótko.
- Konkretnie.
- Bez streszczeń literackich.
- Tylko fakty, decyzje, status, następny krok.
- Nie pomijaj ryzyk.

````

---

## FILE: 09_AUTOMATION/GIT_SYNC_USAGE.md

````text
# GIT SYNC — INSTRUKCJA UŻYCIA

## Cel

Plik `tools/git_sync.ps1` służy do bezpiecznego, lokalnego synchronizowania zmian z Obsidiana do GitHuba.

Skrypt wykonuje:

1. Przejście do katalogu głównego repozytorium.
2. Sprawdzenie statusu Git.
3. Wykrycie zmian.
4. Wyświetlenie listy plików do commita.
5. Poproszenie użytkownika o potwierdzenie.
6. Wykonanie:
   - `git add .`
   - `git commit`
   - `git push`

Jeśli nie ma zmian, skrypt kończy pracę bez tworzenia pustego commita.

---

## Podstawowe uruchomienie

W katalogu głównym repozytorium uruchom:

```powershell
.\tools\git_sync.ps1
```

Domyślny opis commita:

```text
Auto update from Obsidian
```

---

## Uruchomienie z własnym opisem commita

```powershell
.\tools\git_sync.ps1 -Message "Update automation notes"
```

Przykłady:

```powershell
.\tools\git_sync.ps1 -Message "Update project context"
.\tools\git_sync.ps1 -Message "Add n8n workflow notes"
.\tools\git_sync.ps1 -Message "Improve AI work protocol"
```

---

## Jeśli PowerShell blokuje uruchomienie

Jeśli pojawi się błąd:

```text
cannot be loaded because running scripts is disabled on this system
```

uruchom jednorazowo:

```powershell
powershell -ExecutionPolicy Bypass -File .\tools\git_sync.ps1
```

Z własnym opisem commita:

```powershell
powershell -ExecutionPolicy Bypass -File .\tools\git_sync.ps1 -Message "Update notes"
```

---

## Potwierdzenie bezpieczeństwa

Przed wykonaniem `git add`, `commit` i `push` skrypt wyświetla listę zmian i pyta:

```text
Continue with git add/commit/push? Type YES to continue
```

Aby kontynuować, trzeba wpisać dokładnie:

```text
YES
```

Każda inna odpowiedź przerywa działanie.

---

## Zasady bezpieczeństwa

Nie commitować:

- tokenów API,
- haseł,
- kluczy prywatnych,
- plików `.env`,
- plików konfiguracyjnych z sekretami,
- lokalnych backupów,
- danych dostępowych do VPS/n8n.

Plik `.gitignore` blokuje typowe ryzykowne pliki, ale użytkownik nadal powinien zawsze sprawdzać listę zmian przed potwierdzeniem.

---

## Zalecany workflow

1. Edytuj pliki w Obsidianie.
2. Uruchom:

```powershell
.\tools\git_sync.ps1 -Message "Opis zmian"
```

3. Sprawdź listę plików.
4. Jeśli wszystko jest poprawne, wpisz:

```text
YES
```

5. Sprawdź końcowy komunikat.
6. Opcjonalnie wykonaj:

```powershell
git status
```

Oczekiwany wynik:

```text
On branch main
Your branch is up to date with 'origin/main'.

nothing to commit, working tree clean
```

---

## Status

Utworzono: 2026-06-26  
Lokalizacja skryptu: `tools/git_sync.ps1`  
Lokalizacja instrukcji: `09_AUTOMATION/GIT_SYNC_USAGE.md`

````

---

## FILE: 09_AUTOMATION/OBSIDIAN_GITHUB_N8N_PLAN.md

````text
# OBSIDIAN → GITHUB → N8N/VPS — PLAN AUTOMATYZACJI

## Cel

Zbudować bezpieczny przepływ automatyzacji pracy projektu:

`Obsidian → GitHub → n8n/VPS`

System ma umożliwiać:
- lokalną pracę w Obsidianie,
- wersjonowanie zmian w Git,
- synchronizację z GitHubem,
- uruchamianie automatyzacji przez n8n lub VPS,
- brak przekazywania tokenów, haseł i sekretów w czacie AI.

---

## Założenia bezpieczeństwa

1. Tokeny GitHub, klucze API i hasła nie są wklejane do czatu AI.
2. Sekrety są przechowywane wyłącznie lokalnie lub na VPS/n8n.
3. Repozytorium nie zawiera plików `.env`, tokenów ani konfiguracji z hasłami.
4. AI może przygotowywać instrukcje, pliki konfiguracyjne i szablony bez sekretów.
5. Użytkownik samodzielnie wkleja sekrety wyłącznie w bezpiecznych panelach lokalnych/n8n/VPS.

---

## Docelowy przepływ

1. Użytkownik edytuje notatki w Obsidianie.
2. Zmiany trafiają do lokalnego repozytorium Git.
3. Zmiany są commitowane i pushowane do GitHuba.
4. GitHub informuje n8n albo VPS o zmianach.
5. n8n/VPS pobiera repozytorium lub wybrane pliki.
6. Automatyzacja wykonuje zadania:
   - budowanie kontekstu AI,
   - generowanie raportów,
   - aktualizacja plików pomocniczych,
   - kontrola spójności dokumentacji,
   - ewentualne webhooki lub powiadomienia.

---

## Warianty techniczne

### Wariant A — ręczny Git lokalny

Użytkownik ręcznie wykonuje:

```bash
git add .
git commit -m "Update notes"
git push
```

Zalety:
- najbezpieczniejszy na start,
- pełna kontrola,
- brak automatycznych błędów.

Wady:
- wymaga pamiętania o commit/push.

---

### Wariant B — Obsidian Git plugin

Obsidian automatycznie wykonuje commit i push przez plugin Git.

Zalety:
- wygodne,
- automatyczne kopie zmian.

Wady:
- trzeba dobrze skonfigurować częstotliwość,
- ryzyko commitowania niechcianych plików,
- wymaga ostrożności z konfliktami.

---

### Wariant C — lokalny skrypt PowerShell

Skrypt lokalny wykonuje:

```powershell
git add .
git commit -m "Auto update from Obsidian"
git push
```

Zalety:
- prosty,
- pod kontrolą użytkownika,
- można uruchamiać jednym kliknięciem.

Wady:
- wymaga przygotowania skryptu,
- trzeba unikać commitowania plików tymczasowych.

---

### Wariant D — GitHub webhook → n8n

GitHub po pushu wywołuje webhook w n8n.

Zalety:
- dobra automatyzacja,
- n8n reaguje na zmiany,
- brak potrzeby ciągłego sprawdzania repo.

Wady:
- wymaga konfiguracji webhooka,
- wymaga publicznego URL n8n lub tunelu,
- trzeba zabezpieczyć endpoint.

---

### Wariant E — VPS cron pull

VPS co określony czas wykonuje:

```bash
git pull
```

Zalety:
- proste,
- stabilne,
- nie wymaga webhooków.

Wady:
- opóźnienie zależne od interwału,
- VPS musi mieć skonfigurowany dostęp do repo.

---

## Pierwsza rekomendowana ścieżka

Na start wybrać prosty układ:

`Obsidian lokalnie → ręczny git push → GitHub → n8n webhook albo VPS pull`

Etap 1:
- zachować ręczny commit/push,
- dodać `.gitignore`,
- przygotować skrypt pomocniczy PowerShell,
- dopiero później automatyzować Obsidian Git pluginem.

Etap 2:
- skonfigurować n8n lub VPS do odbierania zmian.

---

## Pliki do przygotowania

- `.gitignore`
- `tools/git_sync.ps1`
- `03_AUTOMATION/OBSIDIAN_GITHUB_N8N_PLAN.md`
- później: `03_AUTOMATION/N8N_WORKFLOW_SPEC.md`
- później: `03_AUTOMATION/VPS_DEPLOYMENT_NOTES.md`

---

## Następny krok

Przygotować bezpieczny plik `.gitignore` dla repozytorium Obsidian + AI project hub.

````

---

## FILE: 09_AUTOMATION/VPS_GIT_PULL_PLAN.md

````text
# VPS GIT PULL PLAN

## Cel

Celem tego dokumentu jest opisanie bezpiecznego sposobu synchronizacji repozytorium `AI_PROJECT_HUB` z GitHuba na VPS.

Docelowy przepływ:

```text
Obsidian lokalnie
    ↓
tools/git_sync.ps1
    ↓
GitHub
    ↓
VPS / n8n
```

Ten wariant zakłada, że VPS cyklicznie pobiera aktualny stan repozytorium za pomocą `git pull`.

---

## Status decyzji

Wybrany wariant początkowy:

```text
Wariant A — cykliczny git pull na VPS
```

Powody wyboru:

- prostszy niż webhooki,
- łatwiejszy do debugowania,
- nie wymaga publicznego endpointu n8n,
- mniejsze ryzyko błędnej konfiguracji bezpieczeństwa,
- można później rozbudować do GitHub Webhook → n8n.

---

## Założenia

Repozytorium GitHub:

```text
https://github.com/GrachoTG/AI_PROJECT_HUB.git
```

Repozytorium zawiera:

- dokumentację projektu,
- kontekst dla AI,
- plany automatyzacji,
- instrukcje operacyjne,
- pliki markdown dla Obsidiana.

Repozytorium NIE powinno zawierać:

- tokenów API,
- haseł,
- kluczy prywatnych,
- plików `.env`,
- sekretów n8n,
- sekretów VPS,
- prywatnych konfiguracji produkcyjnych.

---

## Docelowy katalog na VPS

Rekomendowana lokalizacja:

```bash
/opt/ai_project_hub
```

Alternatywnie dla użytkownika systemowego:

```bash
/home/<user>/ai_project_hub
```

Rekomendacja początkowa:

```bash
/home/<user>/ai_project_hub
```

Powód:

- prostsze uprawnienia,
- łatwiejsze testowanie,
- mniejsze ryzyko konfliktów z katalogami systemowymi.

---

## Użytkownik systemowy

Rekomendowane jest użycie osobnego użytkownika technicznego, np.:

```text
aihub
```

Przykładowe utworzenie użytkownika:

```bash
sudo adduser aihub
```

Przełączenie na użytkownika:

```bash
sudo su - aihub
```

Docelowa ścieżka:

```bash
/home/aihub/ai_project_hub
```

---

## Metody dostępu do GitHuba

Możliwe opcje:

1. Publiczne repozytorium przez HTTPS.
2. Prywatne repozytorium przez SSH Deploy Key.
3. Prywatne repozytorium przez Personal Access Token.

---

## Rekomendowana metoda

Najbezpieczniejsza metoda dla VPS:

```text
SSH Deploy Key — read-only
```

Dlaczego:

- klucz może mieć tylko dostęp do jednego repozytorium,
- można ustawić go jako tylko do odczytu,
- nie trzeba używać głównego konta GitHub,
- łatwo go unieważnić,
- nie wymaga zapisywania tokena w skryptach.

---

## Ważne zasady bezpieczeństwa

Nie zapisujemy w repozytorium:

```text
GitHub PAT
SSH private key
.env
n8n credentials
VPS passwords
API keys
Webhook secrets
```

Klucze SSH przechowywać wyłącznie na VPS w katalogu:

```bash
~/.ssh/
```

z uprawnieniami:

```bash
chmod 700 ~/.ssh
chmod 600 ~/.ssh/id_ed25519_ai_project_hub
chmod 644 ~/.ssh/id_ed25519_ai_project_hub.pub
```

---

# Etap 1 — przygotowanie VPS

## Aktualizacja systemu

```bash
sudo apt update
sudo apt upgrade -y
```

## Instalacja Git

```bash
sudo apt install git -y
```

Sprawdzenie wersji:

```bash
git --version
```

---

# Etap 2 — konfiguracja SSH Deploy Key

## Utworzenie katalogu SSH

Jako użytkownik docelowy, np. `aihub`:

```bash
mkdir -p ~/.ssh
chmod 700 ~/.ssh
```

## Wygenerowanie klucza SSH

```bash
ssh-keygen -t ed25519 -C "ai_project_hub_vps_readonly" -f ~/.ssh/id_ed25519_ai_project_hub
```

Podczas pytania o passphrase:

```text
Można zostawić puste na potrzeby automatycznego git pull.
```

Uwaga bezpieczeństwa:

- pusty passphrase ułatwia automatyzację,
- dlatego klucz powinien mieć tylko uprawnienie read-only,
- klucz powinien być przypisany wyłącznie do tego jednego repozytorium.

## Wyświetlenie klucza publicznego

```bash
cat ~/.ssh/id_ed25519_ai_project_hub.pub
```

Skopiować wynik.

---

# Etap 3 — dodanie Deploy Key w GitHub

W GitHub:

```text
Repository → Settings → Deploy keys → Add deploy key
```

Ustawić:

```text
Title: VPS AI_PROJECT_HUB read-only
Key: zawartość pliku .pub
Allow write access: OFF
```

Bardzo ważne:

```text
Allow write access ma pozostać odznaczone.
```

---

# Etap 4 — konfiguracja SSH na VPS

Utworzyć lub edytować plik:

```bash
nano ~/.ssh/config
```

Wkleić:

```sshconfig
Host github-ai-project-hub
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_ed25519_ai_project_hub
    IdentitiesOnly yes
```

Uprawnienia:

```bash
chmod 600 ~/.ssh/config
```

Test połączenia:

```bash
ssh -T github-ai-project-hub
```

Możliwy poprawny komunikat:

```text
Hi <username>/<repo>! You've successfully authenticated, but GitHub does not provide shell access.
```

Albo podobny komunikat informujący o poprawnym uwierzytelnieniu.

---

# Etap 5 — klonowanie repozytorium

Przejść do katalogu domowego użytkownika:

```bash
cd ~
```

Sklonować repozytorium przez alias SSH:

```bash
git clone git@github-ai-project-hub:GrachoTG/AI_PROJECT_HUB.git ai_project_hub
```

Wejść do katalogu:

```bash
cd ~/ai_project_hub
```

Sprawdzić status:

```bash
git status
```

Oczekiwany wynik:

```text
On branch main
Your branch is up to date with 'origin/main'.

nothing to commit, working tree clean
```

---

# Etap 6 — ręczny test aktualizacji

Na komputerze lokalnym:

1. Zmień dowolny bezpieczny plik `.md`.
2. Uruchom:

```powershell
.\tools\git_sync.ps1 -Message "Test VPS pull"
```

3. Potwierdź `YES`.

Na VPS:

```bash
cd ~/ai_project_hub
git pull
```

Oczekiwany wynik:

```text
Already up to date.
```

albo:

```text
Updating ...
Fast-forward
...
```

Sprawdzić status:

```bash
git status
```

Oczekiwany wynik:

```text
nothing to commit, working tree clean
```

---

# Etap 7 — skrypt pull na VPS

Utworzyć katalog na skrypty:

```bash
mkdir -p ~/scripts
```

Utworzyć plik:

```bash
nano ~/scripts/ai_project_hub_pull.sh
```

Wkleić:

```bash
#!/usr/bin/env bash

set -euo pipefail

REPO_DIR="$HOME/ai_project_hub"
LOG_FILE="$HOME/ai_project_hub_pull.log"

echo "=== AI_PROJECT_HUB pull start: $(date -Is) ===" >> "$LOG_FILE"

if [ ! -d "$REPO_DIR/.git" ]; then
    echo "ERROR: Repository not found at $REPO_DIR" >> "$LOG_FILE"
    exit 1
fi

cd "$REPO_DIR"

echo "--- Before pull ---" >> "$LOG_FILE"
git status --short >> "$LOG_FILE" 2>&1

echo "--- Pull ---" >> "$LOG_FILE"
git pull --ff-only >> "$LOG_FILE" 2>&1

echo "--- After pull ---" >> "$LOG_FILE"
git status --short >> "$LOG_FILE" 2>&1

echo "=== AI_PROJECT_HUB pull end: $(date -Is) ===" >> "$LOG_FILE"
echo "" >> "$LOG_FILE"
```

Nadać uprawnienia:

```bash
chmod +x ~/scripts/ai_project_hub_pull.sh
```

Test:

```bash
~/scripts/ai_project_hub_pull.sh
```

Sprawdzenie logu:

```bash
tail -n 50 ~/ai_project_hub_pull.log
```

---

# Etap 8 — automatyzacja przez cron

Edytować crontab użytkownika:

```bash
crontab -e
```

Dodać wpis, np. co 5 minut:

```cron
*/5 * * * * /home/aihub/scripts/ai_project_hub_pull.sh
```

Jeśli użytkownik nie nazywa się `aihub`, dostosować ścieżkę:

```cron
*/5 * * * * /home/<user>/scripts/ai_project_hub_pull.sh
```


````

---

## FILE: 09_AUTOMATION/VPS_SETUP_CHECKLIST.md

````text
# VPS SETUP CHECKLIST

## Cel

Krótka lista wykonawcza do uruchomienia synchronizacji:

```text
GitHub → VPS → n8n
```

dla repozytorium:

```text
AI_PROJECT_HUB
```

---

## Dane bazowe

Repozytorium:

```text
https://github.com/GrachoTG/AI_PROJECT_HUB.git
```

Docelowy użytkownik VPS:

```text
aihub
```

Docelowy katalog repozytorium:

```text
/home/aihub/ai_project_hub
```

Docelowy skrypt pull:

```text
/home/aihub/scripts/ai_project_hub_pull.sh
```

Docelowy log:

```text
/home/aihub/ai_project_hub_pull.log
```

Metoda dostępu do GitHub:

```text
SSH Deploy Key read-only
```

---

# 1. Przygotowanie systemu

## 1.1 Aktualizacja VPS

```bash
sudo apt update
sudo apt upgrade -y
```

Status:

```text
[ ] Wykonane
```

## 1.2 Instalacja Git

```bash
sudo apt install git -y
git --version
```

Status:

```text
[ ] Wykonane
```

---

# 2. Użytkownik techniczny

## 2.1 Utworzenie użytkownika

```bash
sudo adduser aihub
```

Status:

```text
[ ] Wykonane
```

## 2.2 Przełączenie na użytkownika

```bash
sudo su - aihub
```

Status:

```text
[ ] Wykonane
```

## 2.3 Sprawdzenie użytkownika i katalogu

```bash
whoami
pwd
```

Oczekiwane:

```text
aihub
/home/aihub
```

Status:

```text
[ ] Wykonane
```

---

# 3. SSH Deploy Key

## 3.1 Utworzenie katalogu SSH

```bash
mkdir -p ~/.ssh
chmod 700 ~/.ssh
```

Status:

```text
[ ] Wykonane
```

## 3.2 Wygenerowanie klucza

```bash
ssh-keygen -t ed25519 -C "ai_project_hub_vps_readonly" -f ~/.ssh/id_ed25519_ai_project_hub
```

Passphrase:

```text
Puste, jeśli pull ma działać automatycznie z cron.
```

Status:

```text
[ ] Wykonane
```

## 3.3 Uprawnienia kluczy

```bash
chmod 600 ~/.ssh/id_ed25519_ai_project_hub
chmod 644 ~/.ssh/id_ed25519_ai_project_hub.pub
```

Status:

```text
[ ] Wykonane
```

## 3.4 Wyświetlenie klucza publicznego

```bash
cat ~/.ssh/id_ed25519_ai_project_hub.pub
```

Skopiować wynik do GitHub Deploy Keys.

Status:

```text
[ ] Wykonane
```

---

# 4. GitHub Deploy Key

## 4.1 Miejsce w GitHub

```text
Repository → Settings → Deploy keys → Add deploy key
```

Status:

```text
[ ] Otworzone
```

## 4.2 Dane klucza

Title:

```text
VPS AI_PROJECT_HUB read-only
```

Key:

```text
Zawartość pliku:
~/.ssh/id_ed25519_ai_project_hub.pub
```

Allow write access:

```text
OFF / odznaczone
```

Status:

```text
[ ] Dodane
```

## 4.3 Kontrola bezpieczeństwa

```text
[ ] Allow write access jest odznaczone
[ ] Klucz dotyczy tylko repozytorium AI_PROJECT_HUB
[ ] Klucz prywatny nie został nigdzie wklejony
```

---

# 5. Konfiguracja SSH aliasu

## 5.1 Utworzenie configu SSH

```bash
nano ~/.ssh/config
```

Wkleić:

```sshconfig
Host github-ai-project-hub
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_ed25519_ai_project_hub
    IdentitiesOnly yes
```

Status:

```text
[ ] Wykonane
```

## 5.2 Uprawnienia configu

```bash
chmod 600 ~/.ssh/config
```

Status:

```text
[ ] Wykonane
```

## 5.3 Test połączenia

```bash
ssh -T github-ai-project-hub
```

Możliwy poprawny wynik:

```text
Hi ... You've successfully authenticated, but GitHub does not provide shell access.
```

Status:

```text
[ ] Test OK
```

---

# 6. Klonowanie repozytorium

## 6.1 Przejście do katalogu domowego

```bash
cd ~
```

Status:

```text
[ ] Wykonane
```

## 6.2 Git clone

```bash
git clone git@github-ai-project-hub:GrachoTG/AI_PROJECT_HUB.git ai_project_hub
```

Status:

```text
[ ] Wykonane
```

## 6.3 Wejście do repozytorium

```bash
cd ~/ai_project_hub
```

Status:

```text
[ ] Wykonane
```

## 6.4 Kontrola statusu

```bash
git status
```

Oczekiwane:

```text
On branch main
Your branch is up to date with 'origin/main'.

nothing to commit, working tree clean
```

Status:

```text
[ ] Status OK
```

---

# 7. Ręczny test pull

## 7.1 Na VPS

```bash
cd ~/ai_project_hub
git pull --ff-only
```

Status:

```text
[ ] Pull działa
```

## 7.2 Kontrola ostatniego commita

```bash
git log -1 --oneline
```

Status:

```text
[ ] Sprawdzone
```

---

# 8. Skrypt pull

## 8.1 Utworzenie katalogu scripts

```bash
mkdir -p ~/scripts
```

Status:

```text
[ ] Wykonane
```

## 8.2 Utworzenie skryptu

```bash
nano ~/scripts/ai_project_hub_pull.sh
```

Wkleić:

```bash
#!/usr/bin/env bash

set -euo pipefail

REPO_DIR="$HOME/ai_project_hub"
LOG_FILE="$HOME/ai_project_hub_pull.log"

echo "=== AI_PROJECT_HUB pull start: $(date -Is) ===" >> "$LOG_FILE"

if [ ! -d "$REPO_DIR/.git" ]; then
    echo "ERROR: Repository not found at $REPO_DIR" >> "$LOG_FILE"
    exit 1
fi

cd "$REPO_DIR"

echo "--- Before pull ---" >> "$LOG_FILE"
git status --short >> "$LOG_FILE" 2>&1

echo "--- Pull ---" >> "$LOG_FILE"
git pull --ff-only >> "$LOG_FILE" 2>&1

echo "--- After pull ---" >> "$LOG_FILE"
git status --short >> "$LOG_FILE" 2>&1

echo "=== AI_PROJECT_HUB pull end: $(date -Is) ===" >> "$LOG_FILE"
echo "" >> "$LOG_FILE"
```

Status:

```text
[ ] Wykonane
```

## 8.3 Nadanie uprawnień

```bash
chmod +x ~/scripts/ai_project_hub_pull.sh
```

Status:

```text
[ ] Wykonane
```

## 8.4 Test skryptu

```bash
~/scripts/ai_project_hub_pull.sh
```

Status:

```text
[ ] Skrypt działa
```

## 8.5 Sprawdzenie logu

```bash
tail -n 50 ~/ai_project_hub_pull.log
```

Status:

```text
[ ] Log OK
```

---

# 9. Cron

## 9.1 Edycja crontab

```bash
crontab -e
```

Status:

```text
[ ] Otworzone
```

##

````

---

## FILE: 09_AUTOMATION/VPS_STATUS_JSON.md

````text
# VPS Status JSON

## Cel

Ten dokument opisuje plik statusu automatyzacji generowany na VPS po każdej synchronizacji repozytorium `AI_PROJECT_HUB` z GitHuba.

Plik statusu służy jako prosty, maszynowo czytelny punkt kontrolny dla n8n, AI oraz innych procesów automatyzacyjnych.

---

## Lokalizacja pliku na VPS

```text
/home/aihub/ai_project_hub_status.json
```

---

## Proces generowania

Plik jest generowany przez skrypt:

```text
/home/aihub/scripts/ai_project_hub_pull.sh
```

Skrypt jest uruchamiany automatycznie przez `cron` użytkownika `aihub`.

Aktualny harmonogram:

```cron
*/5 * * * * /home/aihub/scripts/ai_project_hub_pull.sh
```

Oznacza to synchronizację co 5 minut.

---

## Przepływ danych

```text
GitHub repository
        ↓
VPS cron
        ↓
/home/aihub/scripts/ai_project_hub_pull.sh
        ↓
/home/aihub/ai_project_hub
        ↓
/home/aihub/ai_project_hub_status.json
```

---

## Przykładowa zawartość pliku

```json
{
  "status": "OK",
  "timestamp": "2026-06-26 19:11:06 CEST",
  "repo_dir": "/home/aihub/ai_project_hub",
  "branch": "main",
  "commit": "43b1243",
  "commit_full": "43b1243ff9031e2e6cd35b7641045339c871d7da",
  "commit_message": "Add git sync usage guide"
}
```

---

## Pola JSON

| Pole | Typ | Opis |
|---|---:|---|
| `status` | string | Status ostatniej synchronizacji. Wartość `OK` albo `ERROR`. |
| `timestamp` | string | Czas wygenerowania statusu na VPS. |
| `repo_dir` | string | Ścieżka do lokalnej kopii repozytorium na VPS. |
| `branch` | string/null | Aktualna gałąź repozytorium. |
| `commit` | string/null | Skrócony hash aktualnego commita. |
| `commit_full` | string/null | Pełny hash aktualnego commita. |
| `commit_message` | string/null | Wiadomość ostatniego commita. |

---

## Znaczenie statusów

### `OK`

Oznacza, że ostatnia synchronizacja zakończyła się poprawnie:

```text
git fetch origin main
git reset --hard origin/main
git clean -fd
```

Po statusie `OK` systemy zewnętrzne mogą uznać, że repozytorium na VPS odpowiada aktualnemu stanowi `origin/main`.

### `ERROR`

Oznacza, że ostatnia synchronizacja nie powiodła się.

W takim przypadku pola:

```json
"branch": null,
"commit": null,
"commit_full": null,
"commit_message": null
```

mogą być puste.

Należy wtedy sprawdzić log:

```text
/home/aihub/ai_project_hub_pull.log
```

---

## Komendy kontrolne na VPS

Sprawdzenie statusu:

```bash
cat /home/aihub/ai_project_hub_status.json
```

Sprawdzenie logu synchronizacji:

```bash
tail -n 80 /home/aihub/ai_project_hub_pull.log
```

Sprawdzenie crona użytkownika `aihub`:

```bash
crontab -l
```

Ręczne uruchomienie synchronizacji:

```bash
/home/aihub/scripts/ai_project_hub_pull.sh
```

---

## Zastosowanie w n8n

n8n może odczytywać plik:

```text
/home/aihub/ai_project_hub_status.json
```

i sprawdzać:

```javascript
status === "OK"
```

oraz porównywać:

```javascript
commit_full
```

z poprzednio zapamiętanym commitem.

Jeżeli `commit_full` się zmienił, n8n może uruchomić dalszy workflow, np.:

1. odczytać aktualne pliki projektu z `/home/aihub/ai_project_hub`,
2. zaktualizować kontekst AI,
3. wygenerować raport zmian,
4. uruchomić kolejne automatyzacje.

---

## Bezpieczeństwo

VPS używa dostępu GitHub przez SSH Deploy Key w trybie read-only.

Oznacza to, że VPS może pobierać zmiany z GitHuba, ale nie powinien mieć możliwości wypychania zmian do repozytorium.

Zasady:

- nie przechowywać tokenów API w repozytorium,
- nie commitować plików `.env`,
- nie umieszczać prywatnych kluczy SSH w repozytorium,
- plik statusu JSON pozostaje lokalnie na VPS i nie musi być commitowany.

---

## Status wdrożenia

Status: wdrożone.

Elementy aktywne:

```text
Repozytorium VPS:
 /home/aihub/ai_project_hub

Skrypt pull:
 /home/aihub/scripts/ai_project_hub_pull.sh

Log:
 /home/aihub/ai_project_hub_pull.log

Status JSON:
 /home/aihub/ai_project_hub_status.json

Cron:
 */5 * * * * /home/aihub/scripts/ai_project_hub_pull.sh
```

Ostatnio potwierdzony status:

```json
{
  "status": "OK",
  "timestamp": "2026-06-26 19:11:06 CEST",
  "branch": "main",
  "commit": "43b1243",
  "commit_full": "43b1243ff9031e2e6cd35b7641045339c871d7da",
  "commit_message": "Add git sync usage guide"
}
```

````

---

## FILE: tools/build_context.py

````text
from pathlib import Path
from datetime import datetime

ROOT = Path(__file__).resolve().parents[1]

OUTPUT = ROOT / "AI_START_PROMPT.md"

FILES = [
    "00_SYSTEM/WORK_RULES.md",

    "01_GLOBAL_CONTEXT/GLOBAL_CONTEXT.md",
    "01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/BUSINESS_CONTEXT_INDEX.md",
    "01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/OWNER_PROFILE.md",
    "01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/STRATEGIC_GOALS.md",
    "01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/DECISION_FILTERS.md",
    "01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/BUSINESS_PORTFOLIO.md",
    "01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/ROLES.md",
    "01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/ACTIVE_PROJECTS.md",

    "02_PROJECTS/AI_Context_System/NEXT_CONTEXT.md",
    "02_PROJECTS/AI_Context_System/PROJECT_BRIEF.md",
    "02_PROJECTS/AI_Context_System/PROJECT_MEMORY.md",
    "02_PROJECTS/AI_Context_System/TASKS.md",
    "02_PROJECTS/AI_Context_System/LOG.md",
    "02_PROJECTS/AI_Context_System/DECISIONS.md",
    "02_PROJECTS/AI_Context_System/GIT_WORKFLOW.md",
    "02_PROJECTS/AI_Context_System/CONTEXT_REFRESH_PROTOCOL.md",

    "07_PROMPTS/START_NEW_CONTEXT.md",
    "07_PROMPTS/UPDATE_PROJECT_MEMORY.md",
    "07_PROMPTS/ADVISORY_BOARD_REVIEW.md",
]

HEADER = f"""# AI_START_PROMPT

Generated: {datetime.now().strftime("%Y-%m-%d %H:%M:%S")}

## ROLA AI

Pracujemy nad projektem `AI_Context_System`.

Nie jesteś zwykłym chatbotem do luźnej rozmowy.
Masz działać jako asystent operacyjny projektu, którego głównym celem jest utrzymanie ciągłości pracy mimo ograniczonego okna kontekstowego AI.

## GŁÓWNY CEL PROJEKTU

Celem `AI_Context_System` jest stworzenie prostego, lokalnego i kontrolowanego systemu pamięci projektowej, który pozwala:

- prowadzić duże projekty AI bez gubienia kontekstu,
- przenosić pracę między czatami bez efektu „głuchego telefonu”,
- zapisywać decyzje, zadania, logi i aktualny status,
- stopniowo przejść od ręcznej pracy w Obsidian do automatyzacji,
- nie komplikować systemu przedwcześnie.

## NAJWAŻNIEJSZE ZASADY WSPÓŁPRACY

Masz bezwzględnie przestrzegać tych zasad:

1. Jedno zadanie naraz.
2. Krótkie, konkretne odpowiedzi.
3. Bez lania wody.
4. Bez pochwał i motywacyjnych ozdobników.
5. Nie zgaduj stanu projektu.
6. Opieraj się na załadowanych plikach źródłowych.
7. Jeśli dane są sprzeczne — wskaż sprzeczność.
8. Jeśli brakuje danych — powiedz dokładnie czego brakuje.
9. Nie proponuj nowych narzędzi bez potrzeby.
10. Proponuj rozwiązania najbardziej odpowiednie do bezpośrednio aktualnego etapu, skupiając się na kosztach, wydajności, oszczędności, skróceniu czasu pracy, maksymalnej automatyzacji.
11. Preferuj rozwiązania darmowe, lokalne i proste.
12. Jeśli widzisz dryf, zatrzymaj go.
13. Jeśli użytkownik się zapętla, nazwij to wprost i wróć do celu.
14. Po istotnych zmianach pilnuj aktualizacji pamięci projektu.
15. Każdy krok ma mieć oczekiwany efekt.
16. Oceń, skorzystaj inspiracji przez pryzmat rady doradczej złożonej z perspektyw eksperckich.

## ZASADA ANTY-GŁUCHY-TELEFON

Nie wolno ci pracować jak streszczenie streszczenia.

Masz odtwarzać projekt z plików źródłowych, a nie z luźnego wrażenia.
Jeżeli `NEXT_CONTEXT.md`, `TASKS.md`, `PROJECT_MEMORY.md` albo inne pliki są niespójne, masz to powiedzieć wprost i zaproponować jedno zadanie porządkujące.

## HIERARCHIA ŹRÓDEŁ PRAWDY

Czytaj kontekst w tej kolejności:

1. `00_SYSTEM/WORK_RULES.md`
2. `01_GLOBAL_CONTEXT/GLOBAL_CONTEXT.md`
3. `01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/`
4. `02_PROJECTS/AI_Context_System/NEXT_CONTEXT.md`
5. `02_PROJECTS/AI_Context_System/PROJECT_MEMORY.md`
6. `02_PROJECTS/AI_Context_System/TASKS.md`
7. `02_PROJECTS/AI_Context_System/LOG.md`
8. `02_PROJECTS/AI_Context_System/DECISIONS.md`
9. `02_PROJECTS/AI_Context_System/GIT_WORKFLOW.md`
10. `02_PROJECTS/AI_Context_System/CONTEXT_REFRESH_PROTOCOL.md`

## KONTEKST BIZNESOWY

Przy ocenach i decyzjach musisz uwzględniać kontekst biznesowy użytkownika.

Domyślny filtr:
Jeżeli działanie nie wspiera przychodu, oszczędności czasu, budowy aktywa, redukcji chaosu albo aktywnego biznesu — rekomendacja brzmi: odłożyć albo odrzucić.

## ZADANIE STARTOWE DLA AI

Na podstawie załadowanego kontekstu:

1. Podsumuj aktualny stan projektu `AI_Context_System` w maksymalnie 10 punktach.
2. Wskaż dokładnie jedno najbliższe zadanie.
3. Nie wykonuj zmian bez potwierdzenia użytkownika.
4. Nie rozpoczynaj kilku wątków naraz.
5. Jeśli widzisz niespójność w dokumentacji, wskaż ją jako problem do uporządkowania.

---

# ZAŁADOWANY KONTEKST PROJEKTU

"""


def read_file(relative_path: str) -> str:
    path = ROOT / relative_path

    if not path.exists():
        return f"""
---

## FILE: {relative_path}

**STATUS: MISSING**

"""

    try:
        content = path.read_text(encoding="utf-8-sig")
    except UnicodeDecodeError:
        content = path.read_text(encoding="utf-8", errors="replace")

    return f"""
---

## FILE: {relative_path}

```markdown
{content}
```

"""

def main():
    parts = [HEADER]

    missing = []

    for file in FILES:
        path = ROOT / file
        if not path.exists():
            missing.append(file)
        parts.append(read_file(file))

    if missing:
        parts.append("\n---\n\n# Ostrzeżenia\n\n")
        for file in missing:
            parts.append(f"- Brak pliku: `{file}`\n")

    OUTPUT.write_text("".join(parts), encoding="utf-8")

    print(f"Generated: {OUTPUT}")
    if missing:
        print("Missing files:")
        for file in missing:
            print(f" - {file}")

if __name__ == "__main__":
    main()

````

---

## FILE: tools/git_sync.ps1

````text
param(
    [string]$Message = "Auto update from Obsidian"
)

Write-Host "=== AI_PROJECT_HUB Git Sync ===" -ForegroundColor Cyan

# Ensure script runs from repository root
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$RepoRoot = Resolve-Path "$ScriptDir\.."
Set-Location $RepoRoot

Write-Host "Repository:" $RepoRoot -ForegroundColor DarkCyan

# Check git availability
git --version | Out-Null
if ($LASTEXITCODE -ne 0) {
    Write-Host "ERROR: Git is not available in PATH." -ForegroundColor Red
    exit 1
}

# Show current status
Write-Host "`n--- Current git status ---" -ForegroundColor Yellow
git status --short

# Check if there are changes
$changes = git status --porcelain

if ([string]::IsNullOrWhiteSpace($changes)) {
    Write-Host "`nNo changes to commit. Working tree clean." -ForegroundColor Green
    exit 0
}

# Safety warning
Write-Host "`n--- Files to be committed ---" -ForegroundColor Yellow
git status --short

Write-Host "`nReview the list above before continuing." -ForegroundColor Yellow
$confirm = Read-Host "Continue with git add/commit/push? Type YES to continue"

if ($confirm -ne "YES") {
    Write-Host "Aborted by user." -ForegroundColor Red
    exit 1
}

# Add changes
git add .

if ($LASTEXITCODE -ne 0) {
    Write-Host "ERROR: git add failed." -ForegroundColor Red
    exit 1
}

# Commit changes
git commit -m $Message

if ($LASTEXITCODE -ne 0) {
    Write-Host "ERROR: git commit failed." -ForegroundColor Red
    exit 1
}

# Push changes
git push

if ($LASTEXITCODE -ne 0) {
    Write-Host "ERROR: git push failed." -ForegroundColor Red
    exit 1
}

Write-Host "`nGit sync completed successfully." -ForegroundColor Green

````

---

## FILE: tools/n8n_maintenance.sh

````text
#!/usr/bin/env bash
set -u

MODE="${1:-check}"
LOG_FILE="/home/aihub/n8n_maintenance.log"

log() {
  echo "[$(date '+%Y-%m-%d %H:%M:%S %Z')] $*" | tee -a "$LOG_FILE"
}

section() {
  echo "" | tee -a "$LOG_FILE"
  echo "============================================================" | tee -a "$LOG_FILE"
  echo "$*" | tee -a "$LOG_FILE"
  echo "============================================================" | tee -a "$LOG_FILE"
}

command_exists() {
  command -v "$1" >/dev/null 2>&1
}

detect_compose() {
  if docker compose version >/dev/null 2>&1; then
    echo "docker compose"
  elif command_exists docker-compose; then
    echo "docker-compose"
  else
    echo ""
  fi
}

check_docker() {
  section "Docker"

  if ! command_exists docker; then
    log "Docker: NIE znaleziono"
    return 0
  fi

  log "Docker: znaleziono"
  docker --version 2>&1 | tee -a "$LOG_FILE"

  section "Kontenery zawierające n8n"
  docker ps -a --format 'table {{.Names}}\t{{.Image}}\t{{.Status}}\t{{.Ports}}' \
    | tee -a "$LOG_FILE" \
    | grep -i n8n || true

  local containers
  containers="$(docker ps -a --format '{{.Names}}' | grep -i n8n || true)"

  if [ -z "$containers" ]; then
    log "Nie znaleziono kontenera n8n."
    return 0
  fi

  while IFS= read -r c; do
    [ -z "$c" ] && continue

    section "Kontener n8n: $c"

    log "Obraz:"
    docker inspect "$c" --format '{{.Config.Image}}' 2>/dev/null | tee -a "$LOG_FILE" || true

    log "Wersja n8n z kontenera:"
    docker exec "$c" n8n --version 2>&1 | tee -a "$LOG_FILE" || true

    log "Zmienne ENV podejrzane dla node'ów:"
    docker inspect "$c" --format '{{range .Config.Env}}{{println .}}{{end}}' 2>/dev/null \
      | grep -Ei 'NODES_EXCLUDE|N8N|NODE|EXEC|COMMUNITY|DISABLE' \
      | sed -E 's/(PASSWORD|TOKEN|KEY|SECRET|PASS|AUTH|CREDENTIALS)=.*/\1=<hidden>/' \
      | tee -a "$LOG_FILE" || true

  done <<< "$containers"
}

check_compose() {
  section "Docker Compose"

  local compose_cmd
  compose_cmd="$(detect_compose)"

  if [ -z "$compose_cmd" ]; then
    log "Docker Compose: NIE znaleziono"
  else
    log "Docker Compose: $compose_cmd"
    $compose_cmd version 2>&1 | tee -a "$LOG_FILE" || true
  fi

  section "Pliki compose w /home /opt /srv"

  find /home /opt /srv \
    -maxdepth 5 \
    \( -name "docker-compose.yml" -o -name "docker-compose.yaml" -o -name "compose.yml" -o -name "compose.yaml" \) \
    2>/dev/null \
    | tee -a "$LOG_FILE" || true
}

check_systemd() {
  section "systemd"

  if ! command_exists systemctl; then
    log "systemctl: brak"
    return 0
  fi

  log "Usługi zawierające n8n:"
  systemctl list-units --type=service --all 2>/dev/null \
    | grep -i n8n \
    | tee -a "$LOG_FILE" || true
}

check_npm() {
  section "npm / global n8n"

  if command_exists node; then
    log "Node:"
    node --version 2>&1 | tee -a "$LOG_FILE"
  else
    log "Node: NIE znaleziono"
  fi

  if command_exists npm; then
    log "npm:"
    npm --version 2>&1 | tee -a "$LOG_FILE"

    log "Globalne paczki n8n:"
    npm list -g --depth=0 2>/dev/null \
      | grep -i n8n \
      | tee -a "$LOG_FILE" || true
  else
    log "npm: NIE znaleziono"
  fi

  if command_exists n8n; then
    log "n8n binary:"
    command -v n8n | tee -a "$LOG_FILE"
    n8n --version 2>&1 | tee -a "$LOG_FILE" || true
  else
    log "n8n binary: NIE znaleziono w PATH"
  fi
}

update_docker_compose() {
  section "Update Docker Compose"

  if ! command_exists docker; then
    log "Brak Dockera."
    exit 1
  fi

  local compose_cmd
  compose_cmd="$(detect_compose)"

  if [ -z "$compose_cmd" ]; then
    log "Brak Docker Compose."
    exit 1
  fi

  local compose_file
  compose_file="$(
    find /home /opt /srv \
      -maxdepth 5 \
      \( -name "docker-compose.yml" -o -name "docker-compose.yaml" -o -name "compose.yml" -o -name "compose.yaml" \) \
      2>/dev/null \
      | while read -r f; do
          grep -qi "n8n" "$f" 2>/dev/null && echo "$f" && break
        done
  )"

  if [ -z "$compose_file" ]; then
    log "Nie znaleziono pliku compose zawierającego n8n."
    log "Nie aktualizuję automatycznie."
    exit 1
  fi

  local compose_dir
  compose_dir="$(dirname "$compose_file")"

  log "Znaleziono compose file: $compose_file"
  log "Katalog: $compose_dir"

  mkdir -p "/home/aihub/n8n_backups"
  cp "$compose_file" "/home/aihub/n8n_backups/compose_$(date '+%Y%m%d_%H%M%S').yml"

  cd "$compose_dir" || exit 1

  log "Wykonuję: $compose_cmd pull"
  $compose_cmd pull 2>&1 | tee -a "$LOG_FILE"

  log "Wykonuję: $compose_cmd up -d"
  $compose_cmd up -d 2>&1 | tee -a "$LOG_FILE"

  log "Update zakończony."
}

update_npm() {
  section "Update npm"

  if ! command_exists npm; then
    log "npm nie istnieje."
    exit 1
  fi

  if ! command_exists n8n; then
    log "n8n nie jest dostępne jako globalny binary."
    exit 1
  fi

  log "Aktualna wersja:"
  n8n --version 2>&1 | tee -a "$LOG_FILE" || true

  log "Instaluję n8n@latest..."
  npm install -g n8n@latest 2>&1 | tee -a "$LOG_FILE"

  log "Nowa wersja:"
  n8n --version 2>&1 | tee -a "$LOG_FILE" || true

  log "Jeśli n8n działa jako usługa, wykonaj potem np.: sudo systemctl restart n8n"
}

do_check() {
  section "n8n maintenance check"
  log "User: $(whoami)"
  log "Host: $(hostname)"
  log "Log file: $LOG_FILE"

  check_docker
  check_compose
  check_systemd
  check_npm

  section "Podsumowanie"
  log "Jeżeli n8n jest w Cloud, Execute Command nie będzie dostępny."
  log "Jeżeli self-hosted i jest NODES_EXCLUDE, może ukrywać Execute Command."
  log "Jeżeli Docker Compose istnieje, aktualizacja zwykle jest bezpieczna przez compose pull/up."
}

do_update() {
  section "n8n maintenance update"

  if command_exists docker && docker ps -a --format '{{.Names}}' | grep -qi n8n; then
    update_docker_compose
    exit $?
  fi

  if command_exists npm && command_exists n8n; then
    update_npm
    exit $?
  fi

  log "Nie wykryłem metody instalacji do automatycznej aktualizacji."
  log "Najpierw uruchom: $0 check"
  exit 1
}

case "$MODE" in
  check)
    do_check
    ;;
  update)
    do_update
    ;;
  *)
    echo "Użycie:"
    echo "  $0 check"
    echo "  $0 update"
    exit 1
    ;;
esac

````