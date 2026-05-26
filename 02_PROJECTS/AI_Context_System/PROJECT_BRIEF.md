# PROJECT_BRIEF

## Nazwa projektu
AI_Context_System

## Cel projektu
Stworzyć system pracy z dużymi projektami AI, który pozwala zachować ciągłość kontekstu mimo ograniczeń okna kontekstowego modeli AI.

## Problem
Modele AI mają ograniczone okno kontekstowe. Przy długiej pracy:
- gubią wcześniejsze założenia,
- zaczynają halucynować,
- mieszają decyzje,
- wymagają powtarzania informacji,
- utrudniają prowadzenie dużych projektów.

## Rozwiązanie docelowe
System pamięci projektowej oparty o:
- lokalną bazę wiedzy w Obsidian,
- uporządkowane pliki Markdown,
- streszczenia do nowych czatów,
- historię decyzji,
- listę zadań,
- log pracy,
- później automatyzację przez VPS/n8n,
- później RAG lub agenta AI.
## Założenie automatyzacji

Docelowo system ma maksymalnie automatyzować:
- aktualizację pamięci projektu,
- aktualizację logów,
- aktualizację list zadań,
- przygotowanie kontekstu do nowych czatów,
- archiwizację decyzji,
- synchronizację danych między narzędziami.

Ręczna praca w Obsidian jest etapem przejściowym.
Służy do zaprojektowania struktury i procesu przed wdrożeniem automatyzacji.

Priorytet:
1. Najpierw prosty działający proces ręczny.
2. Potem wersjonowanie i backup.
3. Potem automatyzacja przez GitHub/n8n/skrypty.
4. Potem RAG/agenci AI.
## Założenie wersjonowania

System musi umożliwiać łatwe odtworzenie ostatniej stabilnej wersji.

Wersjonowaniu docelowo mają podlegać:
- pliki Markdown,
- prompty,
- decyzje,
- struktura katalogów,
- konfiguracje automatyzacji,
- skrypty,
- workflow n8n.

Planowane rozwiązanie:
- Git lokalnie.
- Prywatne repozytorium GitHub.
- Regularny backup.

## Zasady pracy
- Jedno zadanie naraz.
- Krótko i konkretnie.
- Każdy krok ma oczekiwany efekt.
- Nie przechodzimy dalej bez potwierdzenia.
- Użytkownik jest laikiem technicznym.
- Styl: fakty, bez pochwał, bez lania wody.
- Jeśli coś jest złym pomysłem, trzeba powiedzieć wprost.

## Status
Etap początkowy: budowa struktury pamięci projektu w Obsidian.
