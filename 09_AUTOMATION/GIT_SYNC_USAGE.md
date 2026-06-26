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
