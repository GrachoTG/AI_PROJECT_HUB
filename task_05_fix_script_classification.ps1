$ErrorActionPreference = "Stop"

$ResultFile = ".\RESULT_TASK_05A_INSPECT_BUILD_CONTEXT.txt"
$BuildContextPath = ".\tools\build_context.py"
$ManifestPath = ".\AI_CONTEXT_MANIFEST.json"

function Write-Result {
    param([string]$Text)
    Add-Content -LiteralPath $ResultFile -Value $Text -Encoding UTF8
}

if (Test-Path -LiteralPath $ResultFile) {
    Remove-Item -LiteralPath $ResultFile -Force
}

Write-Result "=== TASK 05A: INSPECT build_context.py STRUCTURE ==="
Write-Result "Timestamp: $(Get-Date -Format o)"
Write-Result "Current directory: $(Get-Location)"
Write-Result ""

try {
    Write-Result "=== PRECHECK ==="

    if (-not (Test-Path -LiteralPath $BuildContextPath)) {
        throw "Missing file: $BuildContextPath"
    }

    if (-not (Test-Path -LiteralPath $ManifestPath)) {
        throw "Missing file: $ManifestPath"
    }

    Write-Result "OK: Found $BuildContextPath"
    Write-Result "OK: Found $ManifestPath"
    Write-Result ""

    $pyLines = Get-Content -LiteralPath $BuildContextPath -Encoding UTF8
    $pyRaw = Get-Content -LiteralPath $BuildContextPath -Raw -Encoding UTF8

    Write-Result "=== FILE INFO ==="
    $item = Get-Item -LiteralPath $BuildContextPath
    Write-Result "FullName: $($item.FullName)"
    Write-Result "Length bytes: $($item.Length)"
    Write-Result "LastWriteTime: $($item.LastWriteTime)"
    Write-Result "Line count: $($pyLines.Count)"
    Write-Result ""

    Write-Result "=== FUNCTION LOCATIONS ==="

    $functionMatches = Select-String -LiteralPath $BuildContextPath -Pattern '^\s*def\s+' -Encoding UTF8

    if ($functionMatches) {
        Write-Result ($functionMatches | ForEach-Object {
            "Line $($_.LineNumber): $($_.Line)"
        } | Out-String)
    }
    else {
        Write-Result "WARN: No Python function definitions found."
    }

    Write-Result ""

    Write-Result "=== classify_file FULL FUNCTION CANDIDATE ==="

    $classifyMatch = Select-String -LiteralPath $BuildContextPath -Pattern '^\s*def\s+classify_file\s*\(' -Encoding UTF8 | Select-Object -First 1

    if (-not $classifyMatch) {
        Write-Result "ERROR: Could not find def classify_file(...)."
    }
    else {
        $startIndex = $classifyMatch.LineNumber - 1
        $endIndex = $pyLines.Count - 1

        for ($i = $startIndex + 1; $i -lt $pyLines.Count; $i++) {
            if ($pyLines[$i] -match '^\s*def\s+' -and $i -gt $startIndex) {
                $endIndex = $i - 1
                break
            }
        }

        Write-Result "classify_file starts at line: $($classifyMatch.LineNumber)"
        Write-Result "classify_file candidate ends at line: $($endIndex + 1)"
        Write-Result ""

        for ($i = $startIndex; $i -le $endIndex; $i++) {
            $lineNumber = $i + 1
            Write-Result ("{0,5}: {1}" -f $lineNumber, $pyLines[$i])
        }
    }

    Write-Result ""

    Write-Result "=== LINES CONTAINING tools / script / category ==="

    $interestingPatterns = @(
        'tools',
        'script',
        'category',
        'return',
        'full_load_categories',
        'index_only_categories'
    )

    foreach ($pattern in $interestingPatterns) {
        Write-Result "--- PATTERN: $pattern ---"

        $matches = Select-String -LiteralPath $BuildContextPath -Pattern $pattern -Encoding UTF8

        if ($matches) {
            Write-Result ($matches | ForEach-Object {
                "Line $($_.LineNumber): $($_.Line)"
            } | Out-String)
        }
        else {
            Write-Result "No matches."
        }

        Write-Result ""
    }

    Write-Result "=== MANIFEST CURRENT CATEGORIES ==="

    $manifest = Get-Content -LiteralPath $ManifestPath -Raw -Encoding UTF8 | ConvertFrom-Json

    Write-Result "full_load_categories:"
    if ($manifest.full_load_categories) {
        Write-Result (($manifest.full_load_categories | ForEach-Object { "  - $_" }) -join [Environment]::NewLine)
    }
    else {
        Write-Result "  [missing or empty]"
    }

    Write-Result ""

    Write-Result "index_only_categories:"
    if ($manifest.index_only_categories) {
        Write-Result (($manifest.index_only_categories | ForEach-Object { "  - $_" }) -join [Environment]::NewLine)
    }
    else {
        Write-Result "  [missing or empty]"
    }

    Write-Result ""

    Write-Result "=== BACKUP FILES CREATED BY FAILED TASK 05 ==="

    $backups = Get-ChildItem -LiteralPath "." -Force |
        Where-Object {
            $_.Name -like "AI_CONTEXT_MANIFEST.json.bak_task_05_*" -or
            $_.Name -like "tools\build_context.py.bak_task_05_*"
        }

    $toolBackups = Get-ChildItem -LiteralPath ".\tools" -Force -ErrorAction SilentlyContinue |
        Where-Object {
            $_.Name -like "build_context.py.bak_task_05_*"
        }

    if ($backups -or $toolBackups) {
        Write-Result "Root backups:"
        if ($backups) {
            Write-Result ($backups | Select-Object FullName, Length, LastWriteTime | Format-Table -AutoSize | Out-String)
        }
        else {
            Write-Result "  [none]"
        }

        Write-Result "Tools backups:"
        if ($toolBackups) {
            Write-Result ($toolBackups | Select-Object FullName, Length, LastWriteTime | Format-Table -AutoSize | Out-String)
        }
        else {
            Write-Result "  [none]"
        }
    }
    else {
        Write-Result "No task_05 backup files found."
    }

    Write-Result ""

    Write-Result "=== RESULT ==="
    Write-Result "SUCCESS"
}
catch {
    Write-Result ""
    Write-Result "=== ERROR ==="
    Write-Result $_.Exception.Message
    Write-Result ""
    Write-Result "=== RESULT ==="
    Write-Result "FAILED"

    Write-Host "FAILED. Details saved to $ResultFile"
    exit 1
}

Write-Host "Gotowe. Wynik zapisano do: $ResultFile"
Write-Host "Wklej tutaj zawartosc pliku RESULT_TASK_05A_INSPECT_BUILD_CONTEXT.txt"
