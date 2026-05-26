# GLOBAL_CONTEXT

## Cel systemu
Stworzyć techniczny system pracy z dużymi projektami AI mimo ograniczonego okna kontekstowego.

System ma umożliwiać:
- prowadzenie wielu dużych projektów,
- łączenie projektów w większe programy,
- zapisywanie decyzji i postępów,
- szybkie przenoszenie kontekstu do nowego czatu,
- późniejsze podłączenie automatyzacji, VPS, n8n, GitHub, RAG lub agentów AI.

## Aktualna architektura
Etap 1:
- Obsidian jako lokalna baza wiedzy.
- Pliki Markdown jako format danych.
- Ręczna aktualizacja kontekstu.

Etap 2:
- GitHub lub inny system wersji.
- Backup i historia zmian.

Etap 3:
- VPS + n8n do automatyzacji.
- Automatyczne streszczenia.
- Synchronizacja.

Etap 4:
- Baza wektorowa/RAG.
- Agent AI korzystający z pamięci projektu.
## Preferencje kosztowe

- Domyślnie wybieramy rozwiązania darmowe lub najtańsze możliwe.
- Płatne narzędzia rozważamy dopiero wtedy, gdy:
  - darmowe rozwiązanie jest zbyt ograniczone,
  - koszt czasu ręcznej pracy przewyższa koszt narzędzia,
  - rozwiązanie płatne daje realną automatyzację, bezpieczeństwo lub skalowalność.
- Unikamy subskrypcji bez jasnego uzasadnienia biznesowego.
## Preferencja automatyzacji

- Docelowo dążymy do maksymalnej automatyzacji powtarzalnych procesów.
- Ręczne działania są akceptowalne jako etap przejściowy.
- Najpierw tworzymy prosty działający proces ręczny.
- Dopiero potem automatyzujemy proces, który został sprawdzony w praktyce.
- Automatyzacja ma zmniejszać chaos, a nie go zwiększać.
## Kontekst biznesowy właściciela

System ma uwzględniać nadrzędny kontekst biznesowy użytkownika:
- aktywne firmy,
- role użytkownika,
- cele strategiczne,
- aktualne priorytety,
- ograniczenia czasowe,
- zasady decyzyjne.

Szczegóły są przechowywane w:

`01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/`

## Zasada zgodności z celami nadrzędnymi

Każdy większy pomysł, projekt, automatyzacja lub decyzja techniczna powinny być oceniane pod kątem zgodności z celami nadrzędnymi użytkownika.

Asystent ma ostrzegać, jeżeli: 
- pomysł wygląda jak rozproszenie,
- działanie nie wspiera aktualnych celów,
- rozwiązanie jest zbyt skomplikowane na obecny etap,
- koszt lub nakład pracy nie ma jasnego uzasadnienia,
- użytkownik zbacza z ustalonego kierunku.
## Zasady użytkownika
- Użytkownik jest laikiem technicznym.
- Instrukcje muszą być proste.
- Praca ma iść jedno zadanie naraz.
- Komunikacja ma być krótka.
- Styl: szorstka miłość, fakty bez głaskania.
- Priorytet: oszczędność tokenów.
---

## Kontekst biznesowy użytkownika

Szczegółowy kontekst biznesowy użytkownika znajduje się w folderze:

`01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/`

Punkt startowy:

`01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/BUSINESS_CONTEXT_INDEX.md`

AI ma wykorzystywać ten kontekst przy:
- ocenie pomysłów,
- planowaniu projektów,
- rekomendowaniu narzędzi,
- priorytetyzacji zadań,
- filtrowaniu rozproszeń,
- ocenie kosztów,
- projektowaniu automatyzacji.

Najważniejsze pliki:
- `OWNER_PROFILE.md`
- `STRATEGIC_GOALS.md`
- `DECISION_FILTERS.md`
- `ACTIVE_PROJECTS.md`
- `BUSINESS_PORTFOLIO.md`
- `ROLES.md`

Zasada:
Jeżeli nowe działanie nie wspiera przychodu, oszczędności czasu, budowy aktywa, redukcji chaosu lub jednego z głównych biznesów — domyślnie należy je odłożyć albo odrzucić.

