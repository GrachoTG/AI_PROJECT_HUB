# DECISIONS

## 2026-05-25

### Decyzja 001 — Obsidian jako baza wiedzy
**Decyzja:** Na start system opiera się na Obsidianie i plikach Markdown.

**Powód:** To najprostszy sposób na lokalną, czytelną i kontrolowaną bazę wiedzy bez budowania aplikacji od zera.

**Konsekwencje:**
- Szybki start.
- Brak zależności od jednej aplikacji AI.
- Łatwe kopiowanie kontekstu do nowych czatów.
- Ręczna aktualizacja na początku.

---

### Decyzja 002 — VPS/n8n później
**Decyzja:** VPS i n8n nie są wdrażane na początku.

**Powód:** Automatyzacja bez stabilnej struktury danych byłaby bałaganem.

**Konsekwencje:**
- Najpierw porządek w plikach.
- Potem automatyzacja.
- Mniejsze ryzyko budowania śmieciowego systemu.

---
### Decyzja 003 — priorytet rozwiązań darmowych

Status: Aktywna

Uzasadnienie:
- Projekt ma być rozwijany etapowo.
- Na początku minimalizujemy koszty.
- Płatne narzędzia będą wdrażane tylko, jeśli rozwiązują konkretny problem.

Konsekwencje:
- Najpierw testujemy rozwiązania lokalne, open-source lub darmowe.
- Koszty infrastruktury muszą być uzasadnione.

### Decyzja 004 — Jedno zadanie naraz
**Decyzja:** Pracujemy metodą jednego zadania naraz.

**Powód:** Użytkownik jest laikiem technicznym, a projekt ma być odporny na chaos.

**Konsekwencje:**
- Wolniej na początku.
- Mniej błędów.
- Lepsza kontrola.
## Decyzja: priorytet rozwiązań darmowych

Status: Aktywna

Uzasadnienie:
- Projekt ma być rozwijany etapowo.
- Na początku minimalizujemy koszty.
- Płatne narzędzia będą wdrażane tylko, jeśli rozwiązują konkretny problem.

Konsekwencje:
- Najpierw testujemy rozwiązania lokalne, open-source lub darmowe.
- Koszty infrastruktury muszą być uzasadnione.

## Decyzja: wymagane wersjonowanie systemu

Status: Planowana

Uzasadnienie:
- System będzie zawierał ważne prompty, decyzje, kontekst biznesowy i projektowy.
- Konieczne jest łatwe odtworzenie ostatniej działającej wersji.
- Historia zmian pozwoli cofać błędne aktualizacje.

Planowane rozwiązanie:
- Git lokalnie.
- Prywatne repozytorium GitHub.
- Regularny backup vaulta.

Konsekwencje:
- Przed większymi zmianami należy tworzyć commit.
- Kluczowe wersje systemu powinny być oznaczane jako stabilne.
## 2026-05-26 — Prywatne repozytorium GitHub dla AI_PROJECT_HUB

Podjęto decyzję o używaniu prywatnego repozytorium GitHub jako systemu wersjonowania folderu głównego Obsidian:

`D:\obsidian\sejf\AI_PROJECT_HUB`

Repozytorium:

`https://github.com/GrachoTG/AI_PROJECT_HUB.git`

Uzasadnienie:
- kontrola wersji dla plików projektowych i kontekstowych,
- możliwość cofania zmian,
- ochrona przed przypadkową utratą struktury,
- lepsza synchronizacja pracy między sesjami AI,
- prywatność danych dzięki repozytorium prywatnemu.

Zasady:
- backup lokalny pozostaje obowiązkowy przed większymi zmianami,
- folder `99_BACKUPS/` nie jest wersjonowany,
- pliki cache/workspace Obsidian nie są wersjonowane,
- commit powinien być wykonywany po istotnych zmianach w systemie,
- push do GitHub powinien być wykonywany po zakończonym bloku pracy.

Status decyzji:

`active`
