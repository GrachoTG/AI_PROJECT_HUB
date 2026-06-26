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
