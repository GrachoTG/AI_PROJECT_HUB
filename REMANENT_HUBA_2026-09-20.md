# REMANENT HUBÓW / CENTRUM DOWODZENIA — punkt wznowienia (utworzony 2026-09-20)

> **Jak użyć w nowej sesji:** powiedz "czytaj REMANENT_HUBA_2026-09-20.md i jedziemy". Agent ma przeczytać
> TYLKO ten plik (+ `~/.claude/CLAUDE.md` ładuje się sam), NIE powtarzać audytu, i od razu przejść do sekcji 6
> ("Start następnej sesji"). Wszystko, co niżej, jest już ustalone albo oznaczone jako hipoteza do weryfikacji.

## 0. Status i granice tego dokumentu
- Powstał z audytu 2026-09-20 (odczyt: przewodnik `D:\Moje\AI\Centrum Dowodzenie - kontynuacja.txt`,
  vault `AI_PROJECT_HUB`, `D:\Moje\Voicie\Projects\GA\GA_HUB.md` + `CLAUDE.md`).
- **NIE oglądano:** samych workflowów n8n, zawartości Notion, `ARCHITECTURE_AUDIT.md` (73 KB), `AI_AUDIT_PACK.md`,
  `AleProstaIluzja/`, `kopia/`, `RESULT_*.txt`, zipów. Wszystkie werdykty dla tych pozycji = HIPOTEZA.
- Nic nie zostało skasowane ani zmienione w trakcie audytu. Ten plik jest jedynym zapisem.

## 1. Diagnoza (ustalone fakty)
1. **Cztery+ konkurujące "centra"** do tego samego problemu ("gubię się w informacjach"):
   (A) Notion "Centrum Dowodzenia" + Telegram `@GREGOREK_bot` + n8n + Groq;
   (B) vault Obsidian `AI_PROJECT_HUB` + `tools/build_context.py` (generator promptu startowego);
   (C) `GA_HUB.md` w repo GA;
   (D) aplikacja `ai-project-hub-&-context-manager/` (Vite/React/Express + Gemini) w repo GA — hub sam ją opisuje jako
   "nieużywaną aktywnie";
   (E) `~/.claude/CLAUDE.md` + pamięć Claude Code (jedyne, co FAKTYCZNIE jest czytane w każdej sesji).
2. **Notion (A) jest odcięty od (B)/(C):** plan w vaulcie to Obsidian → GitHub → n8n/VPS, Notiona nie ma w nim wcale.
3. **(A) zrobiło łatwą część.** Działa (wg dokumentu) routing TEKSTU Telegram → Llama 8B → Notion. NIE zrobione:
   nagrywanie rozmów, zadania z deadline/priorytetem/etapem, spotkania → Kalendarz, doklejanie myśli do istniejących
   notatek (semantycznie). Inbox = zwykłe strony (nie baza), cała wiadomość ląduje w tytule strony.
4. **Router (A) ma dziury:** domyślnie "spirala" przy braku dopasowania (ciche błędy), brak potwierdzenia dla usera,
   `Contains` w Switch zależne od kolejności, 4 kategorie vs 7 projektów w vaulcie (taksonomie się nie zgadzają).
5. **Whisper — prawdopodobna przyczyna blokady:** w HTTP Request → Body "Form-Data" → przy parametrze pliku wybrać typ
   "n8n Binary File" + Input Data Field Name; wtedy da się dodać `model=whisper-large-v3`, `language=pl`.
   (Niezweryfikowane w UI. Stan obsługi głosu dziś: NIEZNANY — dokument ma daty "2024-XX-XX".)
6. **Vault (B):** `05_TASKS`, `06_LOGS`, `10_SKILLS`, `11_AGENTS`, `12_IDEAS` puste; `ACTIVE_PROJECTS.md` — 6 z 7
   projektów "następny krok: do doprecyzowania" (łamie własne `STRATEGIC_GOALS.md` pkt 4); backup git co kilka godzin
   działa (`sync_heartbeat.md`); `NEW_CHAT_START_HERE.md` ma zepsute kodowanie (UTF-8 czytany jako cp1250 —
   generuje go `prepare_new_chat.ps1`); `AI_START_PROMPT.md` = 113 KB (~30k tokenów).
7. **`GA_HUB.md` (C):** 38 KB, komórki tabeli po 1–2 tys. znaków, nagłówek "status na 2026-07-20" przy treści z września,
   sekcja 5 nieaktualna, historia niechronologiczna, tylko GA (pozostałe 6 projektów bez huba).
8. **Bezpieczeństwo:** `D:\Moje\AI\client_secret_*.json` ×2 (Google OAuth) leżą luzem — ten sam typ wycieku co incydent
   2026-09-08. Sprawdzić, czy folder nie jest synchronizowany/pushowany; rozważyć rotację i przeniesienie do
   `C:\Users\grach\.claude\secrets\`.
9. **Otwarte zadanie poza tematem:** `System_Rozliczen` — poprawka z 2026-09-16 (`Rozliczenia.gs`/`WczytajWyciag.gs` v1.2)
   NIEPOTWIERDZONA, czeka na test usera (`System_Rozliczen/PLAN.md` sekcja 11). To realny przychód/operacje — ma
   pierwszeństwo przed remanentem, jeśli user tak zdecyduje (bezpiecznik perfekcjonizmu).

## 2. Rekomendacje (moje, do zatwierdzenia przez usera — kolejność = priorytet)
**R1. Jeden inbox, jedno źródło prawdy: OBSIDIAN (vault w gicie).** Powód: agent ma bezpośredni dostęp do plików
(bez MCP), vault ma już wersjonowanie + backup + zdalne repo; Notion wymaga logowania konektora, a wiedza w dwóch
miejscach = powtórka rozjazdu z protokołami. Notion → zamknąć/zarchiwizować po eksporcie (nie kasować przed eksportem).

**R2. Zachować z (A) tylko wartościowe elementy:** bota Telegram, n8n, Groq, prompt klasyfikacji (5.1/5.2 z przewodnika).
Zmienić cel zapisu z Notion na plik w vaulcie (np. `12_IDEAS/INBOX_<projekt>.md` lub `05_TASKS/`, dopisywanie przez węzeł
GitHub w n8n albo plik na VPS + git). Wymagania do dodania: bot odpowiada "zapisano do: X", kategoria "nieznane"
zamiast domyślnej "spirala", taksonomia zgodna z `ACTIVE_PROJECTS.md`, pełna treść w ciele notatki (nie w tytule).

**R3. Ustalić JEDNĄ taksonomię projektów** (lista z `ACTIVE_PROJECTS.md`: AI Context, LR, VOTUM, złoto, energetyka,
GA, PRU — plus ewentualnie Architekt Finansowy / Wygrałem z Bankiem, jeśli to osobne byty) i każdemu wpisać:
właściciel, następny krok, mierzalny efekt, kryterium zakończenia (własna zasada z `STRATEGIC_GOALS.md`).

**R4. Odchudzić `GA_HUB.md`** do prawdziwej rozdzielni: tabela = 1 linia na podprojekt (status + link), szczegóły w
plikach podprojektów (`PROJEKT.md`, `PLAN.md`); historia zmian → osobny `GA_HUB_HISTORIA.md`; poprawić nagłówek/daty;
usunąć nieaktualną sekcję 5. Cel: < 8 KB.

**R5. `build_context.py` / `AI_START_PROMPT.md`:** zamrozić rozwój ("nie robić script_core/script_utility"). Pytanie
kontrolne: czy 30k-tokenowy prompt startowy w ogóle jest używany, skoro `CLAUDE.md` + pamięć + ten typ pliku
punktu-wznowienia robią to taniej? Jeśli nie używany → archiwum. Naprawić kodowanie `prepare_new_chat.ps1`
(zapis UTF-8) tylko jeśli skrypt zostaje.

**R6. Aplikacja (D) `ai-project-hub-&-context-manager`:** domyślny werdykt = ARCHIWUM (nieużywana, wymaga
`GEMINI_API_KEY`, dubluje vault). Zostawić tylko jeśli user poda konkretne uzasadnienie (patrz bezpiecznik).

**R7. Nazewnictwo i jedno miejsce startu:** jeden plik "START" per obszar (vault: `00_SYSTEM/START.md`, krótki, linki),
reszta = archiwum. Nie mnożyć `NEW_CHAT_START_HERE` / `NEXT_CHAT_SUMMARY` / `NEXT_CONTEXT` / `PROJECT_MEMORY`
(dziś istnieją równolegle — patrz inwentarz).

**R8. Sekrety:** patrz pkt 1.8 — załatwić PRZED czymkolwiek innym w tym remanencie (5 minut, ryzyko realne).

## 3. Inwentarz do remanentu (HIPOTEZY werdyktu — zweryfikować przed jakimkolwiek kasowaniem)
Legenda: ZOSTAJE / SCAL / ARCHIWUM (przenieść do `08_ARCHIVE/`, nie kasować) / USUŃ-kandydat (tylko po spełnieniu
reguły z `CLAUDE.md`: kopia gdzie indziej + zweryfikowany dostęp + nie jedyna kopia + nie sekret) / PYTAJ.

### 3a. Vault `D:\Obsidian\sejf\AI_PROJECT_HUB\`
| Pozycja | Hipoteza | Uwaga |
|---|---|---|
| `00_SYSTEM/AI_WORK_PROTOCOL.md`, `WORK_RULES.md` | ARCHIWUM | już oznaczone "scalone" z `CLAUDE.md`; zapis historyczny |
| `00_SYSTEM/sync_heartbeat.md` + mechanizm backupu | ZOSTAJE | działa; potwierdzić, co go uruchamia (Task Scheduler?) i opisać w START |
| `01_GLOBAL_CONTEXT/*` (BUSINESS_CONTEXT, OWNER_PROFILE, STRATEGIC_GOALS, DECISION_FILTERS, ROLES, PORTFOLIO, ACTIVE_PROJECTS) | ZOSTAJE (rdzeń) | to najwartościowsza część; `ACTIVE_PROJECTS.md` do uzupełnienia (R3) i aktualizacji (ost. zmiana 27.06) |
| `02_PROJECTS/AI_Context_System/*` (BRIEF, MEMORY, TASKS, LOG, DECISIONS, GIT_WORKFLOW, NEXT_CONTEXT, CONTEXT_REFRESH_PROTOCOL) | PYTAJ | ost. zmiany maj–cze; zdecydować czy projekt "AI Context System" trwa (R5); jeśli nie → ARCHIWUM |
| `03_MODULES/ADVISORY_BOARD/BOARD_PROFILES.md`, `07_PROMPTS/*` | PYTAJ | sprawdzić, czy używane; prompty mogą trafić do `~/.claude/snippets/` |
| `04_DECISIONS`, `05_TASKS`, `06_LOGS`, `10_SKILLS`, `11_AGENTS`, `12_IDEAS`, `13_PLAYBOOKS`, `20_NOTES` | ZOSTAJE puste / USUŃ puste | puste foldery: zostawić tylko te, które dostaną rolę w R2/R7; resztę usunąć (bezpieczne — puste) |
| `09_AUTOMATION/*` (GIT_SYNC_USAGE, OBSIDIAN_GITHUB_N8N_PLAN, VPS_*) | ZOSTAJE + SCAL | plan Obsidian→GitHub→n8n jest fundamentem R2; sprawdzić aktualność względem GA_HUB 4b (VPS) |
| `AI_START_PROMPT.md`, `AI_CONTEXT_FILE_INDEX.md`, `FULL_FILE_INDEX.md`, `AI_CONTEXT_MANIFEST.json` (+ `.bak_task_05_*`) | ARCHIWUM / USUŃ-kandydat | pliki generowane; `.bak` = USUŃ-kandydat (istnieje aktualny manifest) |
| `AI_AUDIT_PACK.md` (57 KB), `ARCHITECTURE_AUDIT.md` (73 KB), `FILE_TREE_AUDIT.txt`, `struktura.txt` | ARCHIWUM | jednorazowe audyty; NIE czytane w tym audycie — przejrzeć nagłówki, wyciągnąć ewentualne wnioski do R-list |
| `NEW_CHAT_START_HERE.md`, `NEXT_CHAT_SUMMARY.md`, `RESULT_*.txt` (3), `Start_projekt_agent.txt`, `2026-06-30.md` | ARCHIWUM / USUŃ-kandydat | wyniki jednorazowych zadań; `NEW_CHAT_START_HERE` zepsute kodowanie |
| `collect_new_chat_start.ps1`, `prepare_new_chat.ps1`, `task_05_fix_script_classification.ps1`, `tools/*` | PYTAJ | zależne od R5; `task_05_*` = USUŃ-kandydat (jednorazowy) |
| `kopia/`, `99_BACKUPS/`, `AleProstaIluzja/` | PYTAJ | NIE oglądane; sprawdzić zawartość i czy to jedyne kopie |
| `Gregor Academy - Umowy 2026-2027/` + `.canvas` | ARCHIWUM | równoległy, porzucony generator umów (potwierdzone 2026-07-20) |
| Poza vaultem: `D:\Obsidian\sejf\AI_PROJECT_HUB.zip`, `_02.zip`, `D:\Dokuments\AI_PROJECT_HUB_BACKUP_2026-05-26_07-36` | USUŃ-kandydat | stare snapshoty; vault ma git — usuwać dopiero po sprawdzeniu, że nic unikalnego w nich nie ma |

### 3b. Repo GA (`D:\Moje\Voicie\Projects\GA\`)
| Pozycja | Hipoteza | Uwaga |
|---|---|---|
| `GA_HUB.md` | SCAL/odchudzić (R4) | rozdzielić na hub (krótki) + historię |
| `ai-project-hub-&-context-manager/` | ARCHIWUM (R6) | chyba że user uzasadni |
| `_Archiwum/*`, podprojekty aktywne | ZOSTAJE | poza zakresem remanentu |
| `AI/` (Prompty Gala, ga-company-context.json) | ZOSTAJE | drobne |

### 3c. Centrum Dowodzenia (A) i materiały w `D:\Moje\AI\`
| Pozycja | Hipoteza | Uwaga |
|---|---|---|
| `Centrum Dowodzenie - kontynuacja.txt` / `.pdf` | ZOSTAJE jako źródło + SCAL wnioski | prompt klasyfikacji i schemat workflow wchłonąć do vaulta (`09_AUTOMATION/`) |
| Workspace Notion + 4 projekty + workflow n8n "Telegram → Notion Inbox" | PYTAJ | najpierw EKSPORT treści Notion, potem decyzja; workflow nie kasować do czasu działającego zamiennika |
| Bot `@GREGOREK_bot`, Groq API | ZOSTAJE | infrastruktura wielokrotnego użytku |
| `client_secret_*.json` ×2 | R8 — NATYCHMIAST | sekrety; nie kasować bez pytania (mogą być używane przez n8n) |
| Reszta `D:\Moje\AI\` (kursy, wideo, PDF-y, prompty) | poza zakresem | osobny remanent, jeśli user zechce |

### 3d. Pamięć / konfiguracja Claude Code
- `~/.claude/CLAUDE.md` = źródło prawdy zasad. `~/.claude/ZASADY_PRACY.md` = podgląd. `~/.claude/POMYSLY.md` = miejsce
  na pomysły (rozważyć przeniesienie do `12_IDEAS/` po decyzji R1 — wymaga zgody, wg CLAUDE.md).

## 4. Decyzje, które musi podjąć USER (zbierać po jednej — dyscyplina jednego zadania)
- [ ] D1. Inbox: Obsidian (rekomendacja) czy Notion?
- [ ] D2. Czy projekt "AI Context System" (generator promptu startowego) trwa, czy zamrażamy/archiwizujemy?
- [ ] D3. Aplikacja `ai-project-hub-&-context-manager`: archiwum (domyślnie) czy jest powód, by ją rozwijać?
- [ ] D4. Lista projektów (taksonomia) — które z 7 + 2 marek Notion to osobne byty?
- [ ] D5. Czy głos (Whisper) jest dziś potrzebny, czy wystarczy tekst na start?
- [ ] D6. Kolejność: najpierw test poprawki `System_Rozliczen` (pkt 1.9) czy od razu remanent?

## 5. Zasady wykonania remanentu (żeby nie zrobić szkody)
1. **Przed czymkolwiek:** zabezpieczyć stan — vault ma git (sprawdzić `git status`, zrobić commit/tag `pre-remanent-2026-09-20`).
2. **Nic nie kasować** w pierwszym przebiegu. Wszystko "do wyrzucenia" → `08_ARCHIVE/remanent_2026-09-20/` (odwracalne).
   Prawdziwe kasowanie dopiero po tygodniu bez potrzeby + reguła z `CLAUDE.md` (kopia gdzie indziej, zweryfikowany
   dostęp, nie sekret, nie jedyna kopia). Każde skasowanie logować (co / skąd / dlaczego bezpieczne).
3. **Nie oglądane pozycje** (sekcja 0) przejrzeć nagłówkami/`head` PRZED werdyktem — nie ufać hipotezie z tabeli.
4. Sekrety i dane osobowe/finansowe — nigdy do zdalnego repo (reguła globalna); commit/push vaulta dopiero po
   przeglądzie zmienionych plików pod tym kątem.
5. Bezpiecznik perfekcjonizmu: remanent ma mieć koniec. Kryterium zakończenia = sekcja 7.
6. Zapisy do n8n / VPS: agent może być blokowany klasyfikatorem — polecenia do wklejenia przez `!` (patrz `GA_HUB.md` 4a).

## 6. START NASTĘPNEJ SESJI (od razu do pracy)
1. Przeczytaj ten plik. Nie powtarzaj audytu.
2. Zapytaj usera o D6 (test rozliczeń czy remanent) i zbierz D1–D5 po jednej (krok = jedno pytanie, bo to decyzje).
3. Wykonaj R8 (sekrety `client_secret`) — jeden krok, potwierdzenie.
4. `git status` + tag zabezpieczający w vaulcie.
5. Przejrzyj nieoglądane pozycje z sekcji 0 (jeden `Explore`/fork, wynik = tabela werdyktów uzupełniająca sekcję 3).
6. Przebieg 1 remanentu: przeniesienie do `08_ARCHIVE/remanent_2026-09-20/` wg zatwierdzonych werdyktów (paczką — to
   praca bez udziału usera, tryb automatyzacji paczkami).
7. R4 (odchudzenie `GA_HUB.md`) → R3 (uzupełnienie `ACTIVE_PROJECTS.md`) → R2 (nowy przepływ Telegram → vault) → test.
8. Po każdym etapie: aktualizacja tego pliku (sekcja 8) + commit/push vaulta po przeglądzie sekretów.

## 7. Kryterium zakończenia remanentu
- Jedno miejsce startu (`00_SYSTEM/START.md` ≤ 2 KB) + `GA_HUB.md` ≤ 8 KB.
- Jeden inbox działający end-to-end (tekst; głos jeśli D5=tak), bot potwierdza zapis.
- `ACTIVE_PROJECTS.md`: każdy aktywny projekt ma następny krok, właściciela, efekt.
- Zero martwych hubów/aplikacji w aktywnym obszarze; reszta w `08_ARCHIVE/` z logiem.
- Zero sekretów luzem poza `~/.claude/secrets/`.

## 8. Dziennik postępu (dopisywać)
| Data | Co zrobiono | Co dalej |
|---|---|---|
| 2026-09-20 | Audyt + ten plik. Nic nie zmieniono w systemach. | Sekcja 6, krok 1. |
