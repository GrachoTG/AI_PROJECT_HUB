# NEW_CHAT_START_HERE

## Instrukcja dla AI

To jest start nowego czatu dla projektu AI_Context_System.

Masz dziaĹ‚aÄ‡ wedĹ‚ug zasad:

1. Jedno zadanie naraz.
2. KrĂłtko i konkretnie.
3. OszczÄ™dzaj czas, tokeny i pieniÄ…dze.
4. Nie kaĹĽ uĹĽytkownikowi rÄ™cznie wykonywaÄ‡ wielu krokĂłw.
5. JeĹ›li trzeba zebraÄ‡ dane z repozytorium, przygotuj jeden skrypt generujÄ…cy jeden plik wynikowy.
6. Nie zgaduj stanu projektu â€” opieraj siÄ™ na danych poniĹĽej.
7. Po przeczytaniu tego pliku wskaĹĽ dokĹ‚adnie jedno nastÄ™pne zadanie.

---

# NEXT_CHAT_SUMMARY.md

`markdown
# NEXT_CHAT_SUMMARY

## Stan projektu

Pracujemy nad systemem `AI_Context_System`, ktĂłrego celem jest utrzymanie ciÄ…gĹ‚oĹ›ci pracy AI przez automatycznie generowany kontekst z repozytorium `AI_PROJECT_HUB`.

System ma dziaĹ‚aÄ‡ wedĹ‚ug zasad:

1. Jedno zadanie naraz.
2. Minimum rÄ™cznego kopiuj/wklej.
3. Minimum tokenĂłw, czasu i kosztĂłw.
4. Automatyzacja zamiast rÄ™cznego zarzÄ…dzania listÄ… plikĂłw.
5. AI ma znaÄ‡ indeks wszystkich plikĂłw, ale peĹ‚nÄ… treĹ›Ä‡ tylko plikĂłw istotnych.
6. Pliki nowe i nieznane majÄ… byÄ‡ wykrywane jako `unknown`, a nie ignorowane.

## Co juĹĽ ustalono

1. Automatyczny scanner repozytorium w `tools/build_context.py` dziaĹ‚a.
2. `AI_CONTEXT_MANIFEST.json` steruje klasyfikacjÄ… i trybem Ĺ‚adowania plikĂłw.
3. `AI_CONTEXT_FILE_INDEX.md` pokazuje mapÄ™ repozytorium.
4. `AI_START_PROMPT.md` generuje peĹ‚ny prompt startowy.
5. Problemem byĹ‚o zaĹ›miecanie promptu przez peĹ‚nÄ… treĹ›Ä‡ skryptĂłw pomocniczych.
6. SzczegĂłlnie diagnostyczny `tools/ai_audit_pack.ps1` nie powinien byÄ‡ staĹ‚ym elementem systemu.
7. Pliki techniczne/audytowe powinny byÄ‡ oznaczane jako `generated` i trafiaÄ‡ tylko do indeksu.
8. `NEXT_CHAT_SUMMARY.md` byĹ‚ wczeĹ›niej `unknown`; teraz jego rola to handoff miÄ™dzy czatami.

## Aktualny problem

System nadal wymaga dopracowania klasyfikacji skryptĂłw:

- `tools/build_context.py` jest rdzeniem systemu i moĹĽe byÄ‡ Ĺ‚adowany w peĹ‚ni.
- `tools/git_sync.ps1` jest narzÄ™dziem uĹĽytkowym.
- `tools/n8n_maintenance.sh` jest narzÄ™dziem automatyzacji/VPS.
- Docelowo trzeba rozdzieliÄ‡ kategoriÄ™ `script` na:
  - `script_core`
  - `script_utility`

## NajbliĹĽsze rekomendowane zadanie

Nie robiÄ‡ duĹĽego refaktoru.

NajbliĹĽszy krok:

1. ZmodyfikowaÄ‡ `tools/build_context.py`, ĹĽeby klasyfikowaĹ‚:
   - `tools/build_context.py` jako `script_core`
   - pozostaĹ‚e pliki w `tools/` jako `script_utility`
2. ZmodyfikowaÄ‡ `AI_CONTEXT_MANIFEST.json`:
   - `script_core` w `full_load_categories`
   - `script_utility` w `index_only_categories`
3. UruchomiÄ‡ `python .\tools\build_context.py`
4. SprawdziÄ‡, czy `AI_START_PROMPT.md` przestaĹ‚ zawieraÄ‡ peĹ‚nÄ… treĹ›Ä‡ narzÄ™dzi pomocniczych.

## WaĹĽna zasada dla nastÄ™pnego AI

Nie pisaÄ‡ dĹ‚ugich planĂłw.

Zawsze:

1. Odczytaj `NEW_CHAT_START_HERE.md`.
2. Podaj krĂłtkie podsumowanie.
3. WskaĹĽ dokĹ‚adnie jedno nastÄ™pne zadanie.
4. JeĹ›li trzeba wykonaÄ‡ pracÄ™ na repozytorium, przygotuj jeden skrypt albo jedno polecenie.
5. Nie kaĹĽ uĹĽytkownikowi rÄ™cznie wklejaÄ‡ wielu plikĂłw, jeĹ›li da siÄ™ wygenerowaÄ‡ jeden plik wynikowy.


`

---

# AI_CONTEXT_MANIFEST.json

`json
{
    "project":  "AI_Context_System",
    "scan_root":  ".",
    "output_prompt":  "AI_START_PROMPT.md",
    "output_index":  "AI_CONTEXT_FILE_INDEX.md",
    "exclude_dirs":  [
                         ".git",
                         ".obsidian",
                         "99_BACKUPS",
                         "__pycache__",
                         "node_modules",
                         ".venv",
                         "venv",
                         ".mypy_cache",
                         ".pytest_cache"
                     ],
    "exclude_files":  [
                          "ARCHITECTURE_AUDIT.md"
                      ],
    "include_extensions":  [
                               ".md",
                               ".txt",
                               ".py",
                               ".ps1",
                               ".sh",
                               ".json",
                               ".yaml",
                               ".yml"
                           ],
    "max_file_size_kb_for_full_load":  200,
    "warn_on_unknown":  true,
    "include_unknown_index_only":  true,
    "generated_files":  [
                            "AI_START_PROMPT.md",
                            "AI_CONTEXT_FILE_INDEX.md",
                            "FULL_FILE_INDEX.md",
                            "AI_AUDIT_PACK.md",
                            "FILE_TREE_AUDIT.txt",
                            "NEW_CHAT_START_HERE.md"
                        ],
    "full_load_categories":  [
                                 "system",
                                 "global_context",
                                 "business_context",
                                 "project_core",
                                 "project_memory",
                                 "project_tasks",
                                 "project_log",
                                 "decision_log",
                                 "prompt",
                                 "module",
                                 "advisory_board",
                                 "automation",
                                 "script",
                                 "manifest"
                             ],
    "index_only_categories":  [
                                  "generated",
                                  "git_config",
                                  "obsidian_config",
                                  "unknown"
                              ]
}

`

---

# AI_CONTEXT_FILE_INDEX.md

`markdown
# AI_CONTEXT_FILE_INDEX

Generated: 2026-06-27T21:32:47

Project: `AI_Context_System`

## Summary

- full: `33`
- index_only: `4`
- unknown: `4`
- skipped: `0`

## Files

| Path | Ext | Size KB | Modified | Category | Context mode | Reason |
|---|---:|---:|---|---|---|---|
| `.gitignore` | `[none]` | `0.69` | `2026-06-26T16:23:29` | `git_config` | `index_only` | `git_config_index_only` |
| `00_SYSTEM/AI_WORK_PROTOCOL.md` | `.md` | `1.96` | `2026-06-26T16:01:07` | `system` | `full` | `category_full_load` |
| `00_SYSTEM/WORK_RULES.md` | `.md` | `3.58` | `2026-05-25T20:56:34` | `system` | `full` | `category_full_load` |
| `01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/ACTIVE_PROJECTS.md` | `.md` | `3.41` | `2026-06-27T17:51:12` | `business_context` | `full` | `category_full_load` |
| `01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/BUSINESS_CONTEXT_INDEX.md` | `.md` | `2.14` | `2026-05-25T20:53:59` | `business_context` | `full` | `category_full_load` |
| `01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/BUSINESS_PORTFOLIO.md` | `.md` | `2.51` | `2026-05-25T20:33:20` | `business_context` | `full` | `category_full_load` |
| `01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/DECISION_FILTERS.md` | `.md` | `1.42` | `2026-05-25T20:36:21` | `business_context` | `full` | `category_full_load` |
| `01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/OWNER_PROFILE.md` | `.md` | `2.14` | `2026-05-25T20:49:01` | `business_context` | `full` | `category_full_load` |
| `01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/ROLES.md` | `.md` | `2.97` | `2026-05-25T20:48:18` | `business_context` | `full` | `category_full_load` |
| `01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/STRATEGIC_GOALS.md` | `.md` | `2.03` | `2026-05-25T20:37:28` | `business_context` | `full` | `category_full_load` |
| `01_GLOBAL_CONTEXT/GLOBAL_CONTEXT.md` | `.md` | `3.29` | `2026-05-25T21:11:36` | `global_context` | `full` | `category_full_load` |
| `02_PROJECTS/AI_Context_System/CONTEXT_REFRESH_PROTOCOL.md` | `.md` | `5.57` | `2026-06-27T19:15:13` | `project_core` | `full` | `category_full_load` |
| `02_PROJECTS/AI_Context_System/DECISIONS.md` | `.md` | `3.18` | `2026-05-26T12:38:10` | `decision_log` | `full` | `category_full_load` |
| `02_PROJECTS/AI_Context_System/GIT_WORKFLOW.md` | `.md` | `2.66` | `2026-05-26T12:38:10` | `project_core` | `full` | `category_full_load` |
| `02_PROJECTS/AI_Context_System/LOG.md` | `.md` | `4.63` | `2026-05-27T11:23:55` | `project_log` | `full` | `category_full_load` |
| `02_PROJECTS/AI_Context_System/NEXT_CONTEXT.md` | `.md` | `0.74` | `2026-05-27T11:25:48` | `project_core` | `full` | `category_full_load` |
| `02_PROJECTS/AI_Context_System/PROJECT_BRIEF.md` | `.md` | `2.08` | `2026-05-26T12:38:11` | `project_core` | `full` | `category_full_load` |
| `02_PROJECTS/AI_Context_System/PROJECT_MEMORY.md` | `.md` | `6.23` | `2026-05-27T11:24:31` | `project_memory` | `full` | `category_full_load` |
| `02_PROJECTS/AI_Context_System/TASKS.md` | `.md` | `3.62` | `2026-05-26T12:31:34` | `project_tasks` | `full` | `category_full_load` |
| `03_MODULES/ADVISORY_BOARD/BOARD_PROFILES.md` | `.md` | `2.68` | `2026-06-27T20:39:17` | `advisory_board` | `full` | `category_full_load` |
| `07_PROMPTS/ADVISORY_BOARD_REVIEW.md` | `.md` | `1.68` | `2026-05-25T20:08:56` | `prompt` | `full` | `category_full_load` |
| `07_PROMPTS/START_NEW_CONTEXT.md` | `.md` | `0.93` | `2026-05-25T20:03:33` | `prompt` | `full` | `category_full_load` |
| `07_PROMPTS/TASK_PLANNER.md` | `.md` | `0.66` | `2026-05-25T15:23:29` | `prompt` | `full` | `category_full_load` |
| `07_PROMPTS/TECH_DECISION.md` | `.md` | `0.62` | `2026-05-25T15:16:47` | `prompt` | `full` | `category_full_load` |
| `07_PROMPTS/UPDATE_PROJECT_MEMORY.md` | `.md` | `0.75` | `2026-05-25T15:03:08` | `prompt` | `full` | `category_full_load` |
| `09_AUTOMATION/GIT_SYNC_USAGE.md` | `.md` | `2.56` | `2026-06-26T17:03:06` | `automation` | `full` | `category_full_load` |
| `09_AUTOMATION/OBSIDIAN_GITHUB_N8N_PLAN.md` | `.md` | `3.43` | `2026-06-26T16:10:11` | `automation` | `full` | `category_full_load` |
| `09_AUTOMATION/VPS_GIT_PULL_PLAN.md` | `.md` | `6.72` | `2026-06-26T17:12:22` | `automation` | `full` | `category_full_load` |
| `09_AUTOMATION/VPS_SETUP_CHECKLIST.md` | `.md` | `5.2` | `2026-06-26T17:15:46` | `automation` | `full` | `category_full_load` |
| `09_AUTOMATION/VPS_STATUS_JSON.md` | `.md` | `4.17` | `2026-06-26T19:15:50` | `automation` | `full` | `category_full_load` |
| `AI_AUDIT_PACK.md` | `.md` | `57.13` | `2026-06-27T21:29:18` | `unknown` | `unknown` | `unknown_requires_decision` |
| `AI_CONTEXT_FILE_INDEX.md` | `.md` | `5.41` | `2026-06-27T20:40:31` | `generated` | `index_only` | `generated_file_not_loaded_to_avoid_recursion` |
| `AI_CONTEXT_MANIFEST.json` | `.json` | `2.48` | `2026-06-27T21:32:47` | `manifest` | `full` | `category_full_load` |
| `AI_START_PROMPT.md` | `.md` | `113.75` | `2026-06-27T21:15:48` | `generated` | `index_only` | `generated_file_not_loaded_to_avoid_recursion` |
| `FILE_TREE_AUDIT.txt` | `.txt` | `6.57` | `2026-06-27T20:49:59` | `unknown` | `unknown` | `unknown_requires_decision` |
| `FULL_FILE_INDEX.md` | `.md` | `2.03` | `2026-06-27T17:20:15` | `generated` | `index_only` | `generated_file_not_loaded_to_avoid_recursion` |
| `NEXT_CHAT_SUMMARY.md` | `.md` | `2.75` | `2026-06-27T21:32:47` | `unknown` | `unknown` | `unknown_requires_decision` |
| `prepare_new_chat.ps1` | `.ps1` | `7.93` | `2026-06-27T21:29:24` | `unknown` | `unknown` | `unknown_requires_decision` |
| `tools/build_context.py` | `.py` | `11.41` | `2026-06-27T18:13:06` | `script` | `full` | `category_full_load` |
| `tools/git_sync.ps1` | `.ps1` | `1.7` | `2026-06-26T16:28:05` | `script` | `full` | `category_full_load` |
| `tools/n8n_maintenance.sh` | `.sh` | `6.03` | `2026-06-26T20:29:24` | `script` | `full` | `category_full_load` |

## Unknown files requiring decision

- `AI_AUDIT_PACK.md` — `unknown_requires_decision`
- `FILE_TREE_AUDIT.txt` — `unknown_requires_decision`
- `NEXT_CHAT_SUMMARY.md` — `unknown_requires_decision`
- `prepare_new_chat.ps1` — `unknown_requires_decision`

`

---

# Wybrane punkty z tools/build_context.py

`	ext

LineNumber Line                                                    
---------- ----                                                    
        56 def classify_file(rel: str, suffix: str) -> str:        
        81 def determine_context_mode(category, size_kb, manifest):
       157 def render_file(record):                                
       181 def build_prompt(records, manifest):                    
       188 def main():                                             



`

---

# Co zrobiÄ‡ dalej

NajbliĹĽsze zadanie:

ZmieniÄ‡ klasyfikacjÄ™ skryptĂłw w 	ools/build_context.py:

- 	ools/build_context.py ma byÄ‡ script_core
- pozostaĹ‚e pliki z 	ools/ majÄ… byÄ‡ script_utility

Potem zmieniÄ‡ manifest:

- script_core w ull_load_categories
- script_utility w index_only_categories

Cel:

PeĹ‚ny prompt ma zawieraÄ‡ logikÄ™ rdzenia systemu, ale nie ma zawieraÄ‡ peĹ‚nej treĹ›ci pomocniczych skryptĂłw uĹĽytkowych.

