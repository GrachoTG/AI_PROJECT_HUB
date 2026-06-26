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
