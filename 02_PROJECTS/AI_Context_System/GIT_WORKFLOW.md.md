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
