$ErrorActionPreference = "Stop"

Write-Host "=== AI Context System: prepare new chat ==="

$Root = Resolve-Path "."
Set-Location $Root

# ------------------------------------------------------------
# 1. Clean temporary diagnostic script if exists
# ------------------------------------------------------------

$AuditScript = ".\tools\ai_audit_pack.ps1"
if (Test-Path $AuditScript) {
    Remove-Item $AuditScript -Force
    Write-Host "Removed temporary audit script: $AuditScript"
}

# ------------------------------------------------------------
# 2. Update AI_CONTEXT_MANIFEST.json
# ------------------------------------------------------------

$ManifestPath = ".\AI_CONTEXT_MANIFEST.json"

if (!(Test-Path $ManifestPath)) {
    throw "Missing AI_CONTEXT_MANIFEST.json"
}

$json = Get-Content $ManifestPath -Raw -Encoding UTF8 | ConvertFrom-Json

function Ensure-ArrayItem {
    param(
        [array]$Array,
        [string]$Item
    )

    if ($Array -notcontains $Item) {
        return @($Array + $Item)
    }

    return @($Array)
}

# Ensure generated files are not loaded recursively/full
$generated = @($json.generated_files)

foreach ($f in @(
    "AI_START_PROMPT.md",
    "AI_CONTEXT_FILE_INDEX.md",
    "FULL_FILE_INDEX.md",
    "AI_AUDIT_PACK.md",
    "FILE_TREE_AUDIT.txt",
    "NEW_CHAT_START_HERE.md"
)) {
    $generated = Ensure-ArrayItem -Array $generated -Item $f
}

$json.generated_files = $generated

# Ensure useful extensions stay included
$exts = @($json.include_extensions)
foreach ($e in @(".md", ".txt", ".py", ".ps1", ".sh", ".json", ".yaml", ".yml")) {
    $exts = Ensure-ArrayItem -Array $exts -Item $e
}
$json.include_extensions = $exts

# Ensure generated and unknown are index-only categories
$indexOnly = @($json.index_only_categories)
foreach ($cat in @("generated", "git_config", "obsidian_config", "unknown")) {
    $indexOnly = Ensure-ArrayItem -Array $indexOnly -Item $cat
}
$json.index_only_categories = $indexOnly

# Keep script in full_load for now, because build_context.py is still system core.
# TODO later: split script into script_core and script_utility.
$full = @($json.full_load_categories)
foreach ($cat in @(
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
)) {
    $full = Ensure-ArrayItem -Array $full -Item $cat
}
$json.full_load_categories = $full

$json | ConvertTo-Json -Depth 50 | Set-Content $ManifestPath -Encoding UTF8

Write-Host "Updated manifest: $ManifestPath"

# ------------------------------------------------------------
# 3. Update NEXT_CHAT_SUMMARY.md
# ------------------------------------------------------------

$NextSummary = @'
# NEXT_CHAT_SUMMARY

## Stan projektu

Pracujemy nad systemem `AI_Context_System`, którego celem jest utrzymanie ciągłości pracy AI przez automatycznie generowany kontekst z repozytorium `AI_PROJECT_HUB`.

System ma działać według zasad:

1. Jedno zadanie naraz.
2. Minimum ręcznego kopiuj/wklej.
3. Minimum tokenów, czasu i kosztów.
4. Automatyzacja zamiast ręcznego zarządzania listą plików.
5. AI ma znać indeks wszystkich plików, ale pełną treść tylko plików istotnych.
6. Pliki nowe i nieznane mają być wykrywane jako `unknown`, a nie ignorowane.

## Co już ustalono

1. Automatyczny scanner repozytorium w `tools/build_context.py` działa.
2. `AI_CONTEXT_MANIFEST.json` steruje klasyfikacją i trybem ładowania plików.
3. `AI_CONTEXT_FILE_INDEX.md` pokazuje mapę repozytorium.
4. `AI_START_PROMPT.md` generuje pełny prompt startowy.
5. Problemem było zaśmiecanie promptu przez pełną treść skryptów pomocniczych.
6. Szczególnie diagnostyczny `tools/ai_audit_pack.ps1` nie powinien być stałym elementem systemu.
7. Pliki techniczne/audytowe powinny być oznaczane jako `generated` i trafiać tylko do indeksu.
8. `NEXT_CHAT_SUMMARY.md` był wcześniej `unknown`; teraz jego rola to handoff między czatami.

## Aktualny problem

System nadal wymaga dopracowania klasyfikacji skryptów:

- `tools/build_context.py` jest rdzeniem systemu i może być ładowany w pełni.
- `tools/git_sync.ps1` jest narzędziem użytkowym.
- `tools/n8n_maintenance.sh` jest narzędziem automatyzacji/VPS.
- Docelowo trzeba rozdzielić kategorię `script` na:
  - `script_core`
  - `script_utility`

## Najbliższe rekomendowane zadanie

Nie robić dużego refaktoru.

Najbliższy krok:

1. Zmodyfikować `tools/build_context.py`, żeby klasyfikował:
   - `tools/build_context.py` jako `script_core`
   - pozostałe pliki w `tools/` jako `script_utility`
2. Zmodyfikować `AI_CONTEXT_MANIFEST.json`:
   - `script_core` w `full_load_categories`
   - `script_utility` w `index_only_categories`
3. Uruchomić `python .\tools\build_context.py`
4. Sprawdzić, czy `AI_START_PROMPT.md` przestał zawierać pełną treść narzędzi pomocniczych.

## Ważna zasada dla następnego AI

Nie pisać długich planów.

Zawsze:

1. Odczytaj `NEW_CHAT_START_HERE.md`.
2. Podaj krótkie podsumowanie.
3. Wskaż dokładnie jedno następne zadanie.
4. Jeśli trzeba wykonać pracę na repozytorium, przygotuj jeden skrypt albo jedno polecenie.
5. Nie każ użytkownikowi ręcznie wklejać wielu plików, jeśli da się wygenerować jeden plik wynikowy.

'@

Set-Content ".\NEXT_CHAT_SUMMARY.md" -Value $NextSummary -Encoding UTF8
Write-Host "Updated NEXT_CHAT_SUMMARY.md"

# ------------------------------------------------------------
# 4. Regenerate context
# ------------------------------------------------------------

if (!(Test-Path ".\tools\build_context.py")) {
    throw "Missing tools/build_context.py"
}

python .\tools\build_context.py

# ------------------------------------------------------------
# 5. Create NEW_CHAT_START_HERE.md
# ------------------------------------------------------------

$IndexContent = ""
if (Test-Path ".\AI_CONTEXT_FILE_INDEX.md") {
    $IndexContent = Get-Content ".\AI_CONTEXT_FILE_INDEX.md" -Raw -Encoding UTF8
}

$ManifestContent = Get-Content ".\AI_CONTEXT_MANIFEST.json" -Raw -Encoding UTF8
$SummaryContent = Get-Content ".\NEXT_CHAT_SUMMARY.md" -Raw -Encoding UTF8

$BuildInfo = ""
if (Test-Path ".\tools\build_context.py") {
    $BuildInfo = Select-String -Path ".\tools\build_context.py" -Pattern "def classify_file","def determine_context_mode","def build_prompt","def render_file","def main" |
        Select-Object LineNumber, Line |
        Format-Table -AutoSize |
        Out-String
}

$Start = @"
# NEW_CHAT_START_HERE

## Instrukcja dla AI

To jest start nowego czatu dla projektu `AI_Context_System`.

Masz działać według zasad:

1. Jedno zadanie naraz.
2. Krótko i konkretnie.
3. Oszczędzaj czas, tokeny i pieniądze.
4. Nie każ użytkownikowi ręcznie wykonywać wielu kroków.
5. Jeśli trzeba zebrać dane z repozytorium, przygotuj jeden skrypt generujący jeden plik wynikowy.
6. Nie zgaduj stanu projektu — opieraj się na danych poniżej.
7. Po przeczytaniu tego pliku wskaż dokładnie jedno następne zadanie.

---

# NEXT_CHAT_SUMMARY.md

```markdown
$SummaryContent
```

---

# AI_CONTEXT_MANIFEST.json

```json
$ManifestContent
```

---

# AI_CONTEXT_FILE_INDEX.md

```markdown
$IndexContent
```

---

# Wybrane punkty z tools/build_context.py

```text
$BuildInfo
```

---

# Co zrobić dalej

Najbliższe zadanie:

Zmienić klasyfikację skryptów w `tools/build_context.py`:

- `tools/build_context.py` ma być `script_core`
- pozostałe pliki z `tools/` mają być `script_utility`

Potem zmienić manifest:

- `script_core` w `full_load_categories`
- `script_utility` w `index_only_categories`

Cel:

Pełny prompt ma zawierać logikę rdzenia systemu, ale nie ma zawierać pełnej treści pomocniczych skryptów użytkowych.

"@

Set-Content ".\NEW_CHAT_START_HERE.md" -Value $Start -Encoding UTF8

Write-Host ""
Write-Host "DONE"
Write-Host "Generated: NEW_CHAT_START_HERE.md"
Write-Host ""
Write-Host "Open this file and paste it into a new chat:"
Write-Host "Get-Content .\NEW_CHAT_START_HERE.md -Raw"
