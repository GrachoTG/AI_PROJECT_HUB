# OBSIDIAN → GITHUB → N8N/VPS — PLAN AUTOMATYZACJI

## Cel

Zbudować bezpieczny przepływ automatyzacji pracy projektu:

`Obsidian → GitHub → n8n/VPS`

System ma umożliwiać:
- lokalną pracę w Obsidianie,
- wersjonowanie zmian w Git,
- synchronizację z GitHubem,
- uruchamianie automatyzacji przez n8n lub VPS,
- brak przekazywania tokenów, haseł i sekretów w czacie AI.

---

## Założenia bezpieczeństwa

1. Tokeny GitHub, klucze API i hasła nie są wklejane do czatu AI.
2. Sekrety są przechowywane wyłącznie lokalnie lub na VPS/n8n.
3. Repozytorium nie zawiera plików `.env`, tokenów ani konfiguracji z hasłami.
4. AI może przygotowywać instrukcje, pliki konfiguracyjne i szablony bez sekretów.
5. Użytkownik samodzielnie wkleja sekrety wyłącznie w bezpiecznych panelach lokalnych/n8n/VPS.

---

## Docelowy przepływ

1. Użytkownik edytuje notatki w Obsidianie.
2. Zmiany trafiają do lokalnego repozytorium Git.
3. Zmiany są commitowane i pushowane do GitHuba.
4. GitHub informuje n8n albo VPS o zmianach.
5. n8n/VPS pobiera repozytorium lub wybrane pliki.
6. Automatyzacja wykonuje zadania:
   - budowanie kontekstu AI,
   - generowanie raportów,
   - aktualizacja plików pomocniczych,
   - kontrola spójności dokumentacji,
   - ewentualne webhooki lub powiadomienia.

---

## Warianty techniczne

### Wariant A — ręczny Git lokalny

Użytkownik ręcznie wykonuje:

```bash
git add .
git commit -m "Update notes"
git push
```

Zalety:
- najbezpieczniejszy na start,
- pełna kontrola,
- brak automatycznych błędów.

Wady:
- wymaga pamiętania o commit/push.

---

### Wariant B — Obsidian Git plugin

Obsidian automatycznie wykonuje commit i push przez plugin Git.

Zalety:
- wygodne,
- automatyczne kopie zmian.

Wady:
- trzeba dobrze skonfigurować częstotliwość,
- ryzyko commitowania niechcianych plików,
- wymaga ostrożności z konfliktami.

---

### Wariant C — lokalny skrypt PowerShell

Skrypt lokalny wykonuje:

```powershell
git add .
git commit -m "Auto update from Obsidian"
git push
```

Zalety:
- prosty,
- pod kontrolą użytkownika,
- można uruchamiać jednym kliknięciem.

Wady:
- wymaga przygotowania skryptu,
- trzeba unikać commitowania plików tymczasowych.

---

### Wariant D — GitHub webhook → n8n

GitHub po pushu wywołuje webhook w n8n.

Zalety:
- dobra automatyzacja,
- n8n reaguje na zmiany,
- brak potrzeby ciągłego sprawdzania repo.

Wady:
- wymaga konfiguracji webhooka,
- wymaga publicznego URL n8n lub tunelu,
- trzeba zabezpieczyć endpoint.

---

### Wariant E — VPS cron pull

VPS co określony czas wykonuje:

```bash
git pull
```

Zalety:
- proste,
- stabilne,
- nie wymaga webhooków.

Wady:
- opóźnienie zależne od interwału,
- VPS musi mieć skonfigurowany dostęp do repo.

---

## Pierwsza rekomendowana ścieżka

Na start wybrać prosty układ:

`Obsidian lokalnie → ręczny git push → GitHub → n8n webhook albo VPS pull`

Etap 1:
- zachować ręczny commit/push,
- dodać `.gitignore`,
- przygotować skrypt pomocniczy PowerShell,
- dopiero później automatyzować Obsidian Git pluginem.

Etap 2:
- skonfigurować n8n lub VPS do odbierania zmian.

---

## Pliki do przygotowania

- `.gitignore`
- `tools/git_sync.ps1`
- `03_AUTOMATION/OBSIDIAN_GITHUB_N8N_PLAN.md`
- później: `03_AUTOMATION/N8N_WORKFLOW_SPEC.md`
- później: `03_AUTOMATION/VPS_DEPLOYMENT_NOTES.md`

---

## Następny krok

Przygotować bezpieczny plik `.gitignore` dla repozytorium Obsidian + AI project hub.
