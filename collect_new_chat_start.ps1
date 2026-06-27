$ErrorActionPreference = "Stop"

$InputFile = ".\NEW_CHAT_START_HERE.md"
$OutputFile = ".\RESULT_NEW_CHAT_START_HERE.txt"

Write-Host "=== Zbieranie zawartosci pliku NEW_CHAT_START_HERE.md ==="

if (-not (Test-Path -LiteralPath $InputFile)) {
    $message = @"
ERROR: Nie znaleziono pliku:

$InputFile

Biezacy katalog:
$(Get-Location)

Lista plikow w katalogu:
$((Get-ChildItem -Force | Select-Object Mode, Length, LastWriteTime, Name | Format-Table -AutoSize | Out-String))
"@

    $message | Set-Content -LiteralPath $OutputFile -Encoding UTF8
    Write-Host "Nie znaleziono pliku. Zapisano diagnostyke do: $OutputFile"
    exit 1
}

$content = Get-Content -LiteralPath $InputFile -Raw -Encoding UTF8

$result = @"
=== FILE: NEW_CHAT_START_HERE.md ===
=== CURRENT DIRECTORY ===
$(Get-Location)

=== FILE INFO ===
$((Get-Item -LiteralPath $InputFile | Select-Object FullName, Length, LastWriteTime | Format-List | Out-String).Trim())

=== CONTENT START ===
$content
=== CONTENT END ===
"@

$result | Set-Content -LiteralPath $OutputFile -Encoding UTF8

Write-Host "Gotowe."
Write-Host "Wynik zapisano do pliku: $OutputFile"
Write-Host ""
Write-Host "Wklej tutaj zawartosc pliku RESULT_NEW_CHAT_START_HERE.txt"
