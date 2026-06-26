# VPS Status JSON

## Cel

Ten dokument opisuje plik statusu automatyzacji generowany na VPS po każdej synchronizacji repozytorium `AI_PROJECT_HUB` z GitHuba.

Plik statusu służy jako prosty, maszynowo czytelny punkt kontrolny dla n8n, AI oraz innych procesów automatyzacyjnych.

---

## Lokalizacja pliku na VPS

```text
/home/aihub/ai_project_hub_status.json
```

---

## Proces generowania

Plik jest generowany przez skrypt:

```text
/home/aihub/scripts/ai_project_hub_pull.sh
```

Skrypt jest uruchamiany automatycznie przez `cron` użytkownika `aihub`.

Aktualny harmonogram:

```cron
*/5 * * * * /home/aihub/scripts/ai_project_hub_pull.sh
```

Oznacza to synchronizację co 5 minut.

---

## Przepływ danych

```text
GitHub repository
        ↓
VPS cron
        ↓
/home/aihub/scripts/ai_project_hub_pull.sh
        ↓
/home/aihub/ai_project_hub
        ↓
/home/aihub/ai_project_hub_status.json
```

---

## Przykładowa zawartość pliku

```json
{
  "status": "OK",
  "timestamp": "2026-06-26 19:11:06 CEST",
  "repo_dir": "/home/aihub/ai_project_hub",
  "branch": "main",
  "commit": "43b1243",
  "commit_full": "43b1243ff9031e2e6cd35b7641045339c871d7da",
  "commit_message": "Add git sync usage guide"
}
```

---

## Pola JSON

| Pole | Typ | Opis |
|---|---:|---|
| `status` | string | Status ostatniej synchronizacji. Wartość `OK` albo `ERROR`. |
| `timestamp` | string | Czas wygenerowania statusu na VPS. |
| `repo_dir` | string | Ścieżka do lokalnej kopii repozytorium na VPS. |
| `branch` | string/null | Aktualna gałąź repozytorium. |
| `commit` | string/null | Skrócony hash aktualnego commita. |
| `commit_full` | string/null | Pełny hash aktualnego commita. |
| `commit_message` | string/null | Wiadomość ostatniego commita. |

---

## Znaczenie statusów

### `OK`

Oznacza, że ostatnia synchronizacja zakończyła się poprawnie:

```text
git fetch origin main
git reset --hard origin/main
git clean -fd
```

Po statusie `OK` systemy zewnętrzne mogą uznać, że repozytorium na VPS odpowiada aktualnemu stanowi `origin/main`.

### `ERROR`

Oznacza, że ostatnia synchronizacja nie powiodła się.

W takim przypadku pola:

```json
"branch": null,
"commit": null,
"commit_full": null,
"commit_message": null
```

mogą być puste.

Należy wtedy sprawdzić log:

```text
/home/aihub/ai_project_hub_pull.log
```

---

## Komendy kontrolne na VPS

Sprawdzenie statusu:

```bash
cat /home/aihub/ai_project_hub_status.json
```

Sprawdzenie logu synchronizacji:

```bash
tail -n 80 /home/aihub/ai_project_hub_pull.log
```

Sprawdzenie crona użytkownika `aihub`:

```bash
crontab -l
```

Ręczne uruchomienie synchronizacji:

```bash
/home/aihub/scripts/ai_project_hub_pull.sh
```

---

## Zastosowanie w n8n

n8n może odczytywać plik:

```text
/home/aihub/ai_project_hub_status.json
```

i sprawdzać:

```javascript
status === "OK"
```

oraz porównywać:

```javascript
commit_full
```

z poprzednio zapamiętanym commitem.

Jeżeli `commit_full` się zmienił, n8n może uruchomić dalszy workflow, np.:

1. odczytać aktualne pliki projektu z `/home/aihub/ai_project_hub`,
2. zaktualizować kontekst AI,
3. wygenerować raport zmian,
4. uruchomić kolejne automatyzacje.

---

## Bezpieczeństwo

VPS używa dostępu GitHub przez SSH Deploy Key w trybie read-only.

Oznacza to, że VPS może pobierać zmiany z GitHuba, ale nie powinien mieć możliwości wypychania zmian do repozytorium.

Zasady:

- nie przechowywać tokenów API w repozytorium,
- nie commitować plików `.env`,
- nie umieszczać prywatnych kluczy SSH w repozytorium,
- plik statusu JSON pozostaje lokalnie na VPS i nie musi być commitowany.

---

## Status wdrożenia

Status: wdrożone.

Elementy aktywne:

```text
Repozytorium VPS:
 /home/aihub/ai_project_hub

Skrypt pull:
 /home/aihub/scripts/ai_project_hub_pull.sh

Log:
 /home/aihub/ai_project_hub_pull.log

Status JSON:
 /home/aihub/ai_project_hub_status.json

Cron:
 */5 * * * * /home/aihub/scripts/ai_project_hub_pull.sh
```

Ostatnio potwierdzony status:

```json
{
  "status": "OK",
  "timestamp": "2026-06-26 19:11:06 CEST",
  "branch": "main",
  "commit": "43b1243",
  "commit_full": "43b1243ff9031e2e6cd35b7641045339c871d7da",
  "commit_message": "Add git sync usage guide"
}
```
