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

