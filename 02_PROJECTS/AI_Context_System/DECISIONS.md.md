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
