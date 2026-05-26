# AI_START_PROMPT

Generated: 2026-05-26 18:31:06

## Instrukcja dla AI

Pracujemy nad projektem `AI_Context_System`.

Twoje zadanie:
1. Przeczytaj cały kontekst poniżej.
2. Nie zgaduj stanu projektu.
3. Oprzyj się na plikach źródłowych.
4. Najpierw podsumuj aktualny stan w maksymalnie 10 punktach.
5. Następnie wskaż dokładnie jedno następne zadanie.
6. Pracuj krótko, konkretnie, bez lania wody.
7. Pilnuj zasad:
   - jedno zadanie naraz,
   - nie proponuj nowych narzędzi bez potrzeby,
   - nie komplikuj,
   - preferuj darmowe i lokalne rozwiązania,
   - aktualizuj pamięć po istotnych zmianach,
   - jeśli widzisz dryf, zatrzymaj go.

---

# Załadowany kontekst projektu


---

## FILE: 00_SYSTEM/WORK_RULES.md

```markdown
# WORK_RULES

## Tryb pracy
- Jedno zadanie naraz.
- Krótkie odpowiedzi.
- Bez pochwał i lania wody.
- Fakty, ryzyka, decyzje.
- Jeśli pomysł jest zły: powiedzieć wprost.
- Jeśli czegoś nie da się zrobić: powiedzieć wprost i zaproponować obejście.
- Użytkownik jest laikiem: instrukcje mają być proste.
- Każdy krok musi mieć oczekiwany efekt.
- Śledzić zajętość okna kontekstowego, gdy przekracza 55%, zaproponować podsumowanie i przeniesienie do nowego czatu

## Procedura
1. Użytkownik mówi, co chce osiągnąć.
2. Asystent mówi, co zrobić teraz.
3. Asystent podaje oczekiwany efekt.
4. Użytkownik wykonuje.
5. Jeśli efekt zgodny: następny krok.
6. Jeśli nie: naprawiamy bieżący krok.
7. Nie przechodzimy dalej bez potwierdzenia.

## Oszczędność tokenów
- Bez długich wyjaśnień, jeśli nie są konieczne.
- Nie podawać wielu ścieżek naraz.
- Najpierw decyzja, potem wykonanie.
- Stosować listy i krótkie zdania.

---

## Kontrola zgodności z celami

Asystent ma pilnować, czy proponowane działania wspierają nadrzędne cele użytkownika.

Jeżeli działanie:
- wygląda jak rozproszenie,
- nie ma jasnego związku z celem,
- jest zbyt skomplikowane na obecny etap,
- generuje koszt bez uzasadnienia,
- zwiększa chaos operacyjny,

asystent ma jasno to zakomunikować.

Preferowane komunikaty:
- "To wygląda jak rozproszenie."
- "To nie wspiera aktualnego priorytetu."
- "To może być dobry pomysł później, ale nie teraz."
- "Brakuje związku z celem biznesowym."
- "To zwiększy chaos zamiast go zmniejszyć."

---

## Kontrola okna kontekstowego

Asystent ma monitorować długość rozmowy i ryzyko utraty spójności kontekstu.

Jeżeli rozmowa staje się długa, pojawia się wiele decyzji, zadań lub ustaleń, asystent ma ostrzec użytkownika.

Próg roboczy:
- Przy około 55% przewidywanego zużycia kontekstu asystent ma zaproponować przygotowanie pakietu przeniesienia do nowego czatu.

Ponieważ dokładny procent może nie być dostępny, asystent stosuje ocenę przybliżoną.

Forma komunikatu:
"Zbliżamy się do poziomu, przy którym warto przygotować przeniesienie kontekstu. Proponuję zaktualizować PROJECT_MEMORY.md i NEXT_CONTEXT.md."

Przy długich sesjach asystent ma pilnować:
- aktualizacji PROJECT_MEMORY.md,
- aktualizacji LOG.md,
- aktualizacji TASKS.md,
- przygotowania NEXT_CONTEXT.md.


## Aktualizacja pamięci projektu
Po ważnym etapie asystent generuje blok:

AKTUALIZACJA PAMIĘCI

Użytkownik dopisuje go do właściwego pliku projektu, asystent podaje instrukcje jak to zrobić.

---

## Obowiązkowe użycie kontekstu biznesowego

AI ma obowiązek uwzględniać kontekst biznesowy użytkownika przy:

- ocenie pomysłów,
- planowaniu nowych projektów,
- rekomendowaniu narzędzi,
- priorytetyzacji zadań,
- projektowaniu automatyzacji,
- ocenie kosztów,
- decyzjach technicznych,
- decyzjach marketingowych.

Punkt startowy kontekstu biznesowego:

`01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/BUSINESS_CONTEXT_INDEX.md`

---

## Filtr rozproszeń

Jeżeli użytkownik proponuje nowe działanie, AI ma sprawdzić:

1. Czy to wspiera aktywny biznes?
2. Czy to zwiększa przychód?
3. Czy to oszczędza czas?
4. Czy to buduje aktywo?
5. Czy to zmniejsza chaos?
6. Czy to da się zautomatyzować?
7. Czy to jest właściwy moment?

Jeżeli odpowiedź brzmi głównie "nie", AI ma jasno napisać:

**To wygląda jak rozproszenie.**

---

## Domyślna rekomendacja AI

Jeżeli działanie nie ma jasnego związku z:
- przychodem,
- oszczędnością czasu,
- budową aktywa,
- redukcją chaosu,
- aktywnym biznesem,

domyślna rekomendacja brzmi:

**Odłożyć albo odrzucić.**

```


---

## FILE: 01_GLOBAL_CONTEXT/GLOBAL_CONTEXT.md

```markdown
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


```


---

## FILE: 01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/BUSINESS_CONTEXT_INDEX.md

```markdown
# BUSINESS_CONTEXT_INDEX

## Cel pliku

Ten plik jest indeksem kontekstu biznesowego użytkownika.

AI ma używać go jako punktu startowego do zrozumienia aktywnych biznesów, ról, celów strategicznych i filtrów decyzyjnych.

---

## Pliki kontekstu biznesowego

### 1. BUSINESS_PORTFOLIO.md

Opisuje aktywne biznesy, projekty i źródła przychodu użytkownika.

Zawiera:
- LR Health & Beauty,
- VOTUM SA,
- złoto fizyczne w modelu abonamentowym / MLM,
- spółdzielnię / spółkę energetyczną,
- GREGOR ACADEMY.

---

### 2. STRATEGIC_GOALS.md

Opisuje nadrzędne cele strategiczne użytkownika.

Główne cele:
- wzrost przychodów,
- budowa aktywów biznesowych,
- automatyzacja i redukcja pracy ręcznej
- duplikacja,
- redukcja chaosu operacyjnego,
- koncentracja na priorytetach.

---

### 3. DECISION_FILTERS.md

Definiuje filtry decyzyjne dla nowych pomysłów, projektów, zadań, automatyzacji i decyzji technicznych.

Służy do oceny, czy dane działanie:
- wspiera biznes,
- zwiększa przychód,
- oszczędza czas,
- buduje aktywo,
- zmniejsza chaos,
- nie rozprasza od priorytetów
- jest łatwe do zduplikowania.

---

### 4. ROLES.md

Opisuje role użytkownika w aktywnych biznesach.

Zawiera zakres odpowiedzialności i główne wyzwania w:
- LR Health & Beauty,
- VOTUM SA,
- złocie fizycznym,
- spółce energetycznej,
- GREGOR ACADEMY.

---

### 5. OWNER_PROFILE.md

Opisuje profil użytkownika jako właściciela, operatora i osoby decyzyjnej.

Zawiera:
- styl pracy,
- preferencje decyzyjne,
- ograniczenia,
- wymagany styl odpowiedzi AI,
- domyślną zasadę współpracy.

---

## Zasada użycia

Przy analizie pomysłów, decyzji lub zadań AI powinno sprawdzać kontekst w kolejności:

1. OWNER_PROFILE.md
2. STRATEGIC_GOALS.md
3. DECISION_FILTERS.md
4. BUSINESS_PORTFOLIO.md
5. ROLES.md

---

## Domyślna interpretacja

Jeżeli użytkownik prosi o ocenę pomysłu, planu lub zadania, AI powinno odpowiedzieć przez pryzmat:

- aktualnych biznesów,
- celu strategicznego,
- wpływu na przychód,
- wpływu na czas,
- wpływu na chaos operacyjny,
- możliwości automatyzacji,
- kosztu wdrożenia,
- kolejnego prostego kroku
- możliwości duplikacji.

```


---

## FILE: 01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/OWNER_PROFILE.md

```markdown
# OWNER_PROFILE

## Cel pliku

Ten plik opisuje profil użytkownika jako właściciela, operatora i osoby decyzyjnej w wielu projektach biznesowych.

AI ma wykorzystywać ten plik do dopasowania rekomendacji do stylu pracy, ograniczeń, priorytetów i celów użytkownika.

---

## Profil ogólny

Użytkownik prowadzi lub rozwija równolegle kilka projektów biznesowych.

Główne obszary aktywności:
- sprzedaż,
- marketing,
- rekrutacja,
- budowa struktur,
- zarządzanie operacyjne,
- automatyzacja,
- rozwój procesów,
- rozwój biznesów lokalnych i sieciowych.

---

## Styl pracy

Preferowany styl pracy:
- jedno zadanie na raz,
- konkretne instrukcje,
- krótkie odpowiedzi,
- brak lania wody,
- jasne wskazanie następnego kroku,
- rozbijanie złożonych działań na małe etapy,
- brutalna uczciwość zamiast motywacyjnych pochwał.

---

## Preferencje decyzyjne

Przy podejmowaniu decyzji użytkownik preferuje:

- rozwiązania darmowe lub tanie na start,
- rozwiązania możliwe do automatyzacji,
- działania zmniejszające chaos,
- działania zwiększające przychody,
- działania budujące aktywa biznesowe,
- proste wersje startowe zamiast skomplikowanych wdrożeń,
- jasne uzasadnienie kosztów,
- możliwość cofnięcia zmian lub powrotu do stabilnej wersji.

---

## Ograniczenia

AI powinno zakładać, że użytkownik ma ograniczony czas i wiele równoległych obowiązków.

Dlatego rekomendacje powinny:
- ograniczać liczbę jednoczesnych zadań,
- wskazywać priorytety,
- unikać nadmiernej złożoności,
- redukować pracę ręczną,
- nie tworzyć dodatkowego chaosu operacyjnego.

---

## Wymagany styl odpowiedzi AI

AI powinno odpowiadać:
- konkretnie,
- zwięźle,
- bez zbędnych pochwał,
- bez rozwlekania,
- w formie kroków,
- z jasnym oczekiwanym efektem,
- z ostrzeżeniem, jeśli pomysł wygląda jak rozproszenie.

---

## Domyślna zasada współpracy

Jeżeli użytkownik proponuje nowe działanie, AI ma ocenić je pod kątem:

1. Czy wspiera aktualny cel?
2. Czy zwiększa przychód?
3. Czy oszczędza czas?
4. Czy buduje aktywo?
5. Czy zmniejsza chaos?
6. Czy da się to uprościć?
7. Czy powinno być zrobione teraz, czy później?

```


---

## FILE: 01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/STRATEGIC_GOALS.md

```markdown
# STRATEGIC_GOALS

## Cel pliku

Ten plik opisuje nadrzędne cele strategiczne użytkownika.

AI ma wykorzystywać ten plik do oceny, czy pomysły, projekty, zadania i decyzje wspierają właściwy kierunek działania.

---

## Cele nadrzędne

### 1. Wzrost przychodów

Priorytetem są działania, które mogą realnie zwiększyć przychody w aktywnych biznesach.

Preferowane działania:
- pozyskiwanie klientów,
- pozyskiwanie partnerów,
- zwiększanie konwersji,
- poprawa ofert,
- automatyzacja sprzedaży,
- rozwój kanałów dotarcia.

---

### 2. Budowa aktywów biznesowych

Priorytet mają działania, które tworzą trwałe aktywa, a nie tylko jednorazowe efekty.

Przykłady aktywów:
- baza klientów,
- baza leadów,
- struktury sprzedaży,
- procedury,
- systemy automatyzacji,
- treści marketingowe,
- procesy operacyjne,
- baza wiedzy,
- marka osobista lub firmowa.

---

### 3. Automatyzacja i redukcja pracy ręcznej

Systemy powinny zmniejszać liczbę powtarzalnych zadań wykonywanych ręcznie.

Preferowane są rozwiązania, które:
- oszczędzają czas,
- zmniejszają ryzyko błędów,
- porządkują procesy,
- można skalować,
- można powtarzać w wielu biznesach.

---

### 4. Redukcja chaosu operacyjnego

Nowe działania nie powinny zwiększać chaosu.

Każdy projekt powinien mieć:
- jasny cel,
- właściciela,
- następny krok,
- mierzalny efekt,
- miejsce w systemie,
- kryterium zakończenia.

---

### 5. Koncentracja na priorytetach

AI ma pomagać utrzymać skupienie.

Jeżeli pomysł jest ciekawy, ale nie wspiera aktualnego priorytetu, powinien zostać:
- zapisany na później,
- uproszczony,
- albo odrzucony.

---

## Domyślne kryterium oceny działań

Każde większe działanie powinno odpowiadać pozytywnie na co najmniej jedno pytanie:

1. Czy zwiększa przychód?
2. Czy oszczędza czas?
3. Czy buduje aktywo?
4. Czy zmniejsza chaos?
5. Czy wspiera jeden z głównych biznesów?
6. Czy przybliża do celu strategicznego?

Jeżeli odpowiedź na wszystkie pytania brzmi "nie", działanie nie powinno być realizowane teraz.

```


---

## FILE: 01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/DECISION_FILTERS.md

```markdown
# DECISION_FILTERS
## Cel pliku
Ten plik definiuje filtry decyzyjne, które AI ma stosować przy ocenie pomysłów, projektów, zadań, automatyzacji i decyzji technicznych. Celem jest pilnowanie, aby działania wspierały nadrzędne cele użytkownika, zamiast tworzyć rozproszenie
## Zasada nadrzędna

Każdy nowy pomysł, projekt lub zadanie powinien być oceniany pod kątem zgodności z celami nadrzędnymi.

## Pytania kontrolne

Przed rekomendacją działania AI ma sprawdzić:

1. Czy to wspiera któryś z głównych biznesów?
2. Czy to zwiększa przychód, oszczędza czas albo buduje aktywo?
3. Czy to nie rozprasza uwagi od ważniejszych projektów?
4. Czy to można zautomatyzować?
5. Czy istnieje prostsza wersja startowa?
6. Czy koszt narzędzi jest uzasadniony?
7. Czy to wymaga mojej stałej ręcznej pracy?
8. Czy to pasuje do aktualnego priorytetu?
9. Czy to ma mierzalny efekt?
10. Czy to jest pilne, czy tylko ciekawe?

## Obowiązek AI

Jeżeli pomysł nie wspiera celów nadrzędnych, AI ma to jasno napisać.

Preferowana forma:
- "To wygląda jak rozproszenie."
- "To nie wspiera aktualnego priorytetu."
- "To może być dobry pomysł później, ale nie teraz."
- "Brakuje związku z celem biznesowym."
## Domyślna rekomendacja 
Jeżeli nie ma jasnego związku z celem biznesowym, oszczędnością czasu, wzrostem przychodu, redukcją chaosu lub budową aktywa, domyślną rekomendacją jest: 

**Odłożyć lub odrzucić.**
```


---

## FILE: 01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/ACTIVE_PROJECTS.md

```markdown
# ACTIVE_PROJECTS

## Cel pliku

Ten plik opisuje aktualnie aktywne projekty użytkownika.

Ma pomagać AI odróżniać projekty aktywne od pomysłów pobocznych oraz priorytetyzować zadania.
Zawiera: 
- AI Context System, 
- LR Health & Beauty, 
- VOTUM SA, 
- złoto fizyczne abonamentowe / MLM, 
- spółdzielnię / spółkę energetyczną, 
- GREGOR ACADEMY. 

- Służy do: 
- odróżniania projektów aktywnych od pomysłów pobocznych, 
- priorytetyzacji działań, 
- filtrowania nowych pomysłów, 
- utrzymania koncentracji na projektach o znaczeniu biznesowym.
---

## Statusy projektów

Dozwolone statusy:
- `active` — projekt aktywny,
- `paused` — projekt wstrzymany,
- `idea` — pomysł,
- `archived` — zamknięty lub nieaktualny.

---

## Projekty aktywne

### 1. AI Context System

Status: `active`

Opis:
System zarządzania kontekstem AI oparty początkowo o Obsidian, a później GitHub, automatyzację, VPS/n8n i RAG.

Cel:
- utrzymanie spójnej pamięci projektowej,
- obsługa dużych projektów mimo ograniczeń okna kontekstowego,
- automatyzacja aktualizacji wiedzy projektowej,
- stworzenie fundamentu pod przyszłe agenty AI.

Aktualny etap:
- struktura Obsidian gotowa,
- kontekst biznesowy tworzony,
- backup i wersjonowanie do wdrożenia.

Następny krok:
- wdrożenie prostego backupu vaulta Obsidian.

---

### 2. LR Health & Beauty

Status: `active`

Opis:
Budowa struktury sprzedażowej i rozwój działań sprzedażowo-rekrutacyjnych w LR Health & Beauty.

Cel:
- pozyskiwanie klientów,
- pozyskiwanie partnerów,
- rozwój zespołu,
- budowa powtarzalnego systemu działania.

Następny krok:
- do doprecyzowania.

---

### 3. VOTUM SA

Status: `active`

Opis:
Pozyskiwanie partnerów i klientów dla usług grupy VOTUM SA.

Obszary:
- kredyty walutowe,
- SKD,
- służebność przesyłu.

Cel:
- systematyczne pozyskiwanie spraw o wysokiej wartości.
- systematyczna rekrutacja partnerów i budowa zespołu.

Następny krok:
- do doprecyzowania.

---

### 4. Złoto fizyczne abonamentowe / MLM

Status: `active`

Opis:
Sprzedaż i budowa struktury wokół fizycznego złota w modelu abonamentowym.

Cel:
- rozwój sieci sprzedaży,
- edukacja klientów,
- rekrutacja partnerów,
- budowa aktywa opartego na strukturze.

Następny krok:
- do doprecyzowania.

---

### 5. Spółdzielnia / spółka energetyczna

Status: `active`

Opis:
Projekt energetyczny związany ze sprzedażą prądu wytwarzanego przez instalacje fotowoltaiczne członków.

Cel:
- uporządkowanie rozliczeń,
- pozyskanie odbiorców,
- rozwój spółki,
- budowa modelu operacyjnego.

Następny krok:
- do doprecyzowania.

---

### 6. GREGOR ACADEMY

Status: `active`

Opis:
Szkoła językowa w Iławie.

Cel:
- rozwój liczby kursantów,
- poprawa rentowności,
- uporządkowanie procesów,
- automatyzacja administracji i marketingu,
- budowa własnej aplikacji do zarządzania.

Następny krok:
- do doprecyzowania.

---

## Zasada użycia

Jeżeli pojawi się nowy pomysł lub projekt, AI ma porównać go z listą projektów aktywnych.
1. OWNER_PROFILE.md
2. STRATEGIC_GOALS.md
3. DECISION_FILTERS.md
4. ACTIVE_PROJECTS.md
5. BUSINESS_PORTFOLIO.md
6. ROLES.md


Jeżeli nie wspiera żadnego aktywnego projektu ani celu strategicznego, powinien zostać oznaczony jako:
- `idea`,
- `paused`,
- albo odrzucony.

```


---

## FILE: 02_PROJECTS/AI_Context_System/NEXT_CONTEXT.md

```markdown
# NEXT_CONTEXT — AI_Context_System

## Aktualny status

`context_refresh_protocol_docs_updated`

## Ostatnio zakończone

Utworzono:

`02_PROJECTS/AI_Context_System/CONTEXT_REFRESH_PROTOCOL.md`

Zaktualizowano:
- `PROJECT_MEMORY.md`
- `TASKS.md`
- `LOG.md`

Context Refresh Protocol opisuje:
- źródła prawdy,
- kolejność czytania plików,
- pełny start nowej sesji AI,
- minimalny start awaryjny,
- zasadę aktualizacji dokumentacji po sesji,
- checklistę końca sesji,
- procedurę końca sesji,
- standardowy komunikat startowy,
- zasady anty-chaos.

## Następne zadanie

Wykonać commit i push zmian do GitHub.

Status etapu:

`context_refresh_protocol_docs_updated`

Następny krok:

`context_refresh_protocol_git_commit`

## Instrukcja dla następnej sesji AI

Pracujemy nad:

`AI_Context_System`

Przeczytaj w kolejności:

1. `02_PROJECTS/AI_Context_System/NEXT_CONTEXT.md`
2. `02_PROJECTS/AI_Context_System/PROJECT_MEMORY.md`
3. `02_PROJECTS/AI_Context_System/TASKS.md`
4. `02_PROJECTS/AI_Context_System/LOG.md`
5. `02_PROJECTS/AI_Context_System/DECISIONS.md`
6. `02_PROJECTS/AI_Context_System/GIT_WORKFLOW.md`
7. `02_PROJECTS/AI_Context_System/CONTEXT_REFRESH_PROTOCOL.md`

Zasady pracy:
- jedno zadanie na raz,
- krótko i konkretnie,
- bez przeinżynierowania,
- priorytet: przychód, oszczędność czasu, redukcja chaosu,
- darmowe rozwiązania preferowane,
- nie zmieniaj struktury folderów bez decyzji,
- nie proponuj nowych narzędzi bez potrzeby,
- aktualizuj dokumentację po istotnych zmianach,
- commit po istotnym bloku pracy,
- push po zakończeniu sesji.

Najpierw:
1. Podsumuj aktualny stan projektu.
2. Wskaż jedno następne zadanie.
3. Nie zaczynaj kilku wątków naraz.

```


---

## FILE: 02_PROJECTS/AI_Context_System/PROJECT_BRIEF.md

```markdown
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

```


---

## FILE: 02_PROJECTS/AI_Context_System/PROJECT_MEMORY.md

```markdown
# PROJECT_MEMORY

## Aktualny stan
Budowana jest ręczna baza pamięci projektowej w Obsidian.

## Wykonane
- Zainstalowano Obsidian.
- Utworzono vault: AI_PROJECT_HUB.
- Utworzono foldery główne:
  - 00_SYSTEM
  - 01_GLOBAL_CONTEXT
  - 02_PROJECTS
  - 03_MODULES
  - 04_DECISIONS
  - 05_TASKS
  - 06_LOGS
  - 07_PROMPTS
  - 08_ARCHIVE
- Utworzono plik zasad pracy:
  - 00_SYSTEM/WORK_RULES.md
- Utworzono plik kontekstu globalnego:
  - 01_GLOBAL_CONTEXT/GLOBAL_CONTEXT.md
- Utworzono projekt:
  - 02_PROJECTS/AI_Context_System
- Utworzono plik:
  - PROJECT_BRIEF.md

## Decyzje
- Rdzeń systemu na start: Obsidian + Markdown.
- VPS i n8n zostaną użyte później do automatyzacji.
- Hosting współdzielony nie będzie rdzeniem systemu.
- Pracujemy jedno zadanie naraz.
- Po etapach aktualizujemy pamięć projektu.

## Otwarte problemy
- Brak jeszcze plików:
  - TASKS.md
  - DECISIONS.md
  - LOG.md
  - NEXT_CONTEXT.md
- Brak backupu.
- Brak GitHub.
- Brak automatyzacji n8n.
- Brak RAG/agenta AI.

## Następny krok
Utworzyć pliki operacyjne projektu.

---

## Aktualizacja 2026-05-25 — Szablony promptów

Wykonano:
- Utworzono folderową bazę projektu w Obsidian.
- Uzupełniono podstawowe pliki operacyjne projektu:
  - TASKS.md
  - DECISIONS.md
  - LOG.md
  - NEXT_CONTEXT.md
- Utworzono szablony promptów:
  - START_NEW_CONTEXT.md
  - UPDATE_PROJECT_MEMORY.md
  - TECH_DECISION.md
  - TASK_PLANNER.md

Status:
- Ręczna baza wiedzy działa.
- Projekt można przenosić między czatami przez NEXT_CONTEXT.md.
- Podstawowe prompty operacyjne są gotowe.

Następny krok:
- Zaplanować prosty system backupu vaulta Obsidian.
---

## Aktualizacja 2026-05-25 — Założenie automatyzacji

Przyjęto założenie, że ręczna aktualizacja plików w Obsidian jest etapem przejściowym.

Docelowo system ma automatyzować:
- aktualizację PROJECT_MEMORY.md,
- aktualizację LOG.md,
- aktualizację TASKS.md,
- przygotowanie NEXT_CONTEXT.md,
- archiwizację decyzji,
- synchronizację danych między narzędziami.

Kolejność wdrożenia:
1. Backup.
2. Wersjonowanie.
3. Automatyzacja.
4. RAG/agenci AI.
---

## Aktualizacja 2026-05-25 — Wersjonowanie

Przyjęto, że system musi mieć możliwość odtworzenia ostatniej stabilnej wersji.

Planowane podejście:
- Git lokalnie.
- Prywatne repozytorium GitHub.
- Regularny backup vaulta.
- Procedura cofania zmian po błędnej aktualizacji.

Status:
- Wersjonowanie jest planowane po wdrożeniu podstawowego backupu.
---

## Aktualizacja — 2026-05-25

Wykonano etap budowy bazowego systemu kontekstu AI w Obsidian.

Utworzono i/lub zaktualizowano:

- `00_SYSTEM/WORK_RULES.md`
- `01_GLOBAL_CONTEXT/GLOBAL_CONTEXT.md`
- `01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/BUSINESS_CONTEXT_INDEX.md`
- `01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/OWNER_PROFILE.md`
- `01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/STRATEGIC_GOALS.md`
- `01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/DECISION_FILTERS.md`
- `01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/BUSINESS_PORTFOLIO.md`
- `01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/ROLES.md`
- `01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/ACTIVE_PROJECTS.md`
- `99_BACKUPS/README.md`

Ustalono główne zasady pracy:

- jedno zadanie na raz,
- krótkie odpowiedzi,
- brutalna uczciwość,
- oszczędność tokenów,
- obowiązkowe użycie kontekstu biznesowego,
- filtrowanie rozproszeń,
- priorytet działań wspierających aktywne projekty,
- preferencja dla rozwiązań darmowych,
- automatyzacja etapowa.

Aktualny stan:

- vault Obsidian `AI_PROJECT_HUB` ma gotową strukturę bazową,
- kontekst biznesowy jest wypełniony,
- lista aktywnych projektów została dodana,
- folder backupu został przygotowany,
- dalsze ręczne rozbudowywanie plików ma malejący sens,
- następny realny etap to backup całego vaulta i wdrożenie GitHub.
## 2026-05-26 — Backup przed GitHubem zakończony

Etap `backup_before_github` został zakończony.

Wykonano ręczny backup całego folderu głównego Obsidian:

`AI_PROJECT_HUB`

Backup zapisano poza folderem głównym pod nazwą zgodną ze schematem:

`AI_PROJECT_HUB_BACKUP_2026-05-26_07-36`

Backup został sprawdzony — zawiera główne foldery systemu:
- `00_SYSTEM`
- `01_GLOBAL_CONTEXT`
- `02_PROJECTS`
- `99_BACKUPS`

Minimalny warunek bezpieczeństwa przed przejściem do GitHub został spełniony.

Następny etap projektu:

`github_versioning`
## 2026-05-26 — GitHub versioning zakończony

Etap `github_versioning` został zakończony.

Vault Obsidian / folder główny projektu:

`D:\obsidian\sejf\AI_PROJECT_HUB`

został połączony z prywatnym repozytorium GitHub:

`https://github.com/GrachoTG/AI_PROJECT_HUB.git`

Wykonano konfigurację Git:

- repozytorium lokalne zainicjalizowane na branchu `main`,
- skonfigurowano lokalnie `user.name=Teddy`,
- skonfigurowano lokalny email Git,
- dodano remote `origin`,
- wykonano pierwszy commit,
- wykonano pierwszy push do GitHub,
- branch `main` śledzi `origin/main`.

Pierwszy commit:

`Initial commit - AI project hub structure`

Status etapu:

`github_versioning_completed`

Następny etap:

`daily_git_workflow_setup`
## 2026-05-26 — Daily Git workflow zakończony

Etap `daily_git_workflow_setup` został zakończony.

Utworzono plik:

`02_PROJECTS/AI_Context_System/GIT_WORKFLOW.md`

Plik opisuje:
- standardowy workflow Git,
- szybką procedurę po pracy,
- zasady commitów,
- czego nie commitować,
- procedurę awaryjną,
- procedurę końca sesji AI.

Wykonano commit:

`Add daily Git workflow procedure`

Zmiany zostały wypchnięte do GitHub:

`https://github.com/GrachoTG/AI_PROJECT_HUB.git`

Status etapu:

`daily_git_workflow_setup_completed`

Następny możliwy etap:

`context_refresh_protocol`

```


---

## FILE: 02_PROJECTS/AI_Context_System/TASKS.md

```markdown
# TASKS — AI Context System

## Status ogólny

Bazowa struktura systemu kontekstu AI w Obsidian została utworzona.

Aktualny etap:

`backup_before_github`

---

## Zadania wykonane

- [x] Utworzono strukturę vaulta `AI_PROJECT_HUB`
- [x] Utworzono folder `00_SYSTEM`
- [x] Utworzono `WORK_RULES.md`
- [x] Utworzono `01_GLOBAL_CONTEXT`
- [x] Utworzono `GLOBAL_CONTEXT.md`
- [x] Utworzono folder `BUSINESS_CONTEXT`
- [x] Utworzono `BUSINESS_CONTEXT_INDEX.md`
- [x] Utworzono `OWNER_PROFILE.md`
- [x] Utworzono `STRATEGIC_GOALS.md`
- [x] Utworzono `DECISION_FILTERS.md`
- [x] Utworzono `BUSINESS_PORTFOLIO.md`
- [x] Utworzono `ROLES.md`
- [x] Utworzono `ACTIVE_PROJECTS.md`
- [x] Dodano obowiązkowe użycie kontekstu biznesowego do `WORK_RULES.md`
- [x] Dodano kontekst biznesowy do `GLOBAL_CONTEXT.md`
- [x] Utworzono folder `99_BACKUPS`
- [x] Utworzono `99_BACKUPS/README.md`
- [x] Zaktualizowano `PROJECT_MEMORY.md`

---

## Zadania najbliższe

### 1. Backup folderu głównego Obsidian

Status: `done`

Zakres:
- [x] wykonano ręczną kopię całego folderu `AI_PROJECT_HUB`,
- [x] nazwano backup według schematu:

`AI_PROJECT_HUB_BACKUP_YYYY-MM-DD_HH-MM`

- [x] zapisano backup poza folderem głównym,
- [x] opcjonalnie skopiować na dysk zewnętrzny lub chmurę.

---

### 2. GitHub versioning

Status: `done`

Zakres:
- [x] utworzono prywatne repozytorium GitHub,
- [x] zainicjalizowano lokalne repozytorium Git,
- [x] skonfigurowano branch `main`,
- [x] skonfigurowano lokalny `user.name`,
- [x] skonfigurowano lokalny email Git,
- [x] utworzono `.gitignore`,
- [x] dodano remote `origin`,
- [x] wykonano pierwszy commit,
- [x] wykonano pierwszy push,
- [x] ustawiono śledzenie `main -> origin/main`.

Repozytorium:

`https://github.com/GrachoTG/AI_PROJECT_HUB.git`

Następne zadanie:

`daily_git_workflow_setup`

---

### 3. Automatyzacja aktualizacji kontekstu

Status: `later`

Zakres:
- zaprojektować prosty workflow aktualizacji plików po sesji AI,
- docelowo wykorzystać n8n / skrypty / VPS.

---

### 4. RAG / baza wektorowa

Status: `later`

Zakres:
- dobrać bazę wektorową,
- podłączyć vault jako źródło wiedzy,
- umożliwić agentom AI wyszukiwanie kontekstu projektowego.

---

## Zadania wstrzymane

- rozbudowane automatyzacje,
- VPS,
- n8n,
- baza wektorowa,
- agenci AI.

Powód:
Najpierw musi istnieć stabilny backup i wersjonowanie.

### 3. Daily Git workflow

Status: `done`

Zakres:
- [x] utworzono `GIT_WORKFLOW.md`,
- [x] opisano standardowy workflow Git,
- [x] opisano szybką procedurę po pracy,
- [x] opisano procedurę przed rozpoczęciem pracy,
- [x] opisano zasady tworzenia commitów,
- [x] opisano czego nie commitować,
- [x] opisano procedurę awaryjną,
- [x] opisano procedurę końca sesji AI,
- [x] wykonano commit,
- [x] wykonano push do GitHub.

Commit:

`Add daily Git workflow procedure`

Status etapu:

`daily_git_workflow_setup_completed`

Następne możliwe zadanie:

`context_refresh_protocol`
### 4. Context Refresh Protocol

Status: `docs_updated`

Zakres:
- [x] utworzono `CONTEXT_REFRESH_PROTOCOL.md`,
- [x] opisano cel procedury,
- [x] opisano kiedy używać procedury,
- [x] wskazano źródła prawdy,
- [x] opisano pełny start nowej sesji AI,
- [x] opisano minimalny start awaryjny,
- [x] opisano zasadę aktualizacji po sesji,
- [x] dodano checklistę końca sesji,
- [x] opisano procedurę końca sesji,
- [x] dodano standardowy komunikat startowy,
- [x] dodano zasady anty-chaos,
- [x] zaktualizować `LOG.md`,
- [x] zaktualizować `NEXT_CONTEXT.md`,
- [ ] wykonać commit,
- [ ] wykonać push do GitHub.

Status etapu:

`context_refresh_protocol_docs_updated`

Następny krok:

`context_refresh_protocol_git_commit`


```


---

## FILE: 02_PROJECTS/AI_Context_System/DECISIONS.md

```markdown
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

```


---

## FILE: 02_PROJECTS/AI_Context_System/CONTEXT_REFRESH_PROTOCOL.md

```markdown
# CONTEXT_REFRESH_PROTOCOL — AI_Context_System

## Cel

Ten plik opisuje procedurę odświeżania kontekstu między sesjami AI.

Problem:
- AI traci część kontekstu między rozmowami,
- projekt ma wiele plików systemowych,
- bez procedury rośnie chaos,
- decyzje mogą być powtarzane albo nadpisywane.

Cel procedury:
- szybko odtworzyć aktualny stan projektu,
- wskazać AI, które pliki są źródłem prawdy,
- ograniczyć błędne założenia,
- zakończyć każdą sesję tak, żeby kolejna mogła ruszyć bez zgadywania.

---

## Kiedy używać

Procedury używamy:

- na początku każdej nowej sesji AI,
- po dłuższej przerwie,
- po większych zmianach w strukturze projektu,
- gdy AI zaczyna zgadywać zamiast opierać się na dokumentacji,
- gdy praca przechodzi między różnymi narzędziami AI.

---

## Źródła prawdy

Na starcie sesji AI podstawowe źródła prawdy to:

```text
02_PROJECTS/AI_Context_System/NEXT_CONTEXT.md
02_PROJECTS/AI_Context_System/PROJECT_MEMORY.md
02_PROJECTS/AI_Context_System/TASKS.md
02_PROJECTS/AI_Context_System/LOG.md
02_PROJECTS/AI_Context_System/DECISIONS.md
02_PROJECTS/AI_Context_System/GIT_WORKFLOW.md
02_PROJECTS/AI_Context_System/CONTEXT_REFRESH_PROTOCOL.md
```

Kolejność czytania:

1. `NEXT_CONTEXT.md`
2. `PROJECT_MEMORY.md`
3. `TASKS.md`
4. `LOG.md`
5. `DECISIONS.md`
6. `GIT_WORKFLOW.md`
7. `CONTEXT_REFRESH_PROTOCOL.md`

---

## Start nowej sesji AI

Na początku nowej sesji wklej do AI:

```text
Pracujemy nad AI_Context_System.

Przeczytaj kontekst z następujących plików:

1. 02_PROJECTS/AI_Context_System/NEXT_CONTEXT.md
2. 02_PROJECTS/AI_Context_System/PROJECT_MEMORY.md
3. 02_PROJECTS/AI_Context_System/TASKS.md
4. 02_PROJECTS/AI_Context_System/LOG.md
5. 02_PROJECTS/AI_Context_System/DECISIONS.md
6. 02_PROJECTS/AI_Context_System/GIT_WORKFLOW.md
7. 02_PROJECTS/AI_Context_System/CONTEXT_REFRESH_PROTOCOL.md

Aktualny status projektu jest zapisany w NEXT_CONTEXT.md.

Zasady pracy:
- jedno zadanie na raz,
- krótko i konkretnie,
- bez przeinżynierowania,
- priorytet: przychód, oszczędność czasu, redukcja chaosu,
- nie proponuj nowych narzędzi bez potrzeby,
- po większych zmianach aktualizujemy dokumentację,
- commit po istotnym bloku pracy,
- push po zakończeniu sesji.

Najpierw podsumuj aktualny stan projektu w maksymalnie 10 punktach.
Następnie zaproponuj jedno następne zadanie.
```

---

## Minimalny start awaryjny

Jeśli nie ma czasu na pełne czytanie kontekstu, użyj minimalnego startu:

```text
Pracujemy nad AI_Context_System.

Aktualny status odczytaj z:

- 02_PROJECTS/AI_Context_System/NEXT_CONTEXT.md
- 02_PROJECTS/AI_Context_System/TASKS.md

Nie zgaduj. Jeśli czegoś brakuje, poproś o konkretny plik.

Zaproponuj tylko jedno następne zadanie.
```

---

## Zasada aktualizacji po sesji

Na końcu każdej istotnej sesji należy zaktualizować:

```text
02_PROJECTS/AI_Context_System/PROJECT_MEMORY.md
02_PROJECTS/AI_Context_System/TASKS.md
02_PROJECTS/AI_Context_System/LOG.md
02_PROJECTS/AI_Context_System/NEXT_CONTEXT.md
```

Opcjonalnie, jeśli była decyzja architektoniczna:

```text
02_PROJECTS/AI_Context_System/DECISIONS.md
```

Jeśli zmienił się workflow Git:

```text
02_PROJECTS/AI_Context_System/GIT_WORKFLOW.md
```

Jeśli zmieniła się procedura odświeżania kontekstu:

```text
02_PROJECTS/AI_Context_System/CONTEXT_REFRESH_PROTOCOL.md
```

---

## Checklista końca sesji

Przed zakończeniem sesji AI wykonaj:

```text
[ ] PROJECT_MEMORY.md zaktualizowany
[ ] TASKS.md zaktualizowany
[ ] LOG.md zaktualizowany
[ ] NEXT_CONTEXT.md zaktualizowany
[ ] DECISIONS.md zaktualizowany, jeśli była decyzja
[ ] Git status sprawdzony
[ ] Commit wykonany, jeśli były istotne zmiany
[ ] Push wykonany po zakończonym bloku pracy
```

---

## Procedura końca sesji

1. Podsumuj, co zostało zrobione.
2. Zaktualizuj:
   - `PROJECT_MEMORY.md`
   - `TASKS.md`
   - `LOG.md`
   - `NEXT_CONTEXT.md`
3. Jeśli była decyzja — zaktualizuj `DECISIONS.md`.
4. Sprawdź Git:

```powershell
cd "D:\obsidian\sejf\AI_PROJECT_HUB"
git status
```

5. Jeśli są zmiany:

```powershell
git add .
git commit -m "Update context after session"
git push
```

6. Na końcu zapisz status następnego etapu w `NEXT_CONTEXT.md`.

---

## Standardowy komunikat startowy dla kolejnej sesji

```text
Pracujemy nad AI_Context_System.

Przeczytaj kontekst z:
- NEXT_CONTEXT.md
- PROJECT_MEMORY.md
- TASKS.md
- LOG.md
- DECISIONS.md
- GIT_WORKFLOW.md
- CONTEXT_REFRESH_PROTOCOL.md

Aktualny status jest w NEXT_CONTEXT.md.

Kontynuujemy od etapu wskazanego w NEXT_CONTEXT.md.

Najpierw:
1. Podsumuj aktualny stan projektu.
2. Wskaż jedno następne zadanie.
3. Nie zaczynaj kilku wątków naraz.
```

---

## Zasady anty-chaos

Nie wolno:
- rozpoczynać kilku etapów naraz,
- zmieniać struktury folderów bez decyzji,
- dodawać nowych narzędzi bez potrzeby,
- robić refaktoryzacji „bo można”,
- pomijać aktualizacji `NEXT_CONTEXT.md`,
- zgadywać aktualnego statusu projektu bez sprawdzenia plików kontekstowych.

Wolno:
- upraszczać,
- usuwać nadmiar,
- domykać rozpoczęte etapy,
- dokumentować decyzje,
- proponować najkrótszą skuteczną ścieżkę.

---

## Status

Status procedury:

`context_refresh_protocol_created`

Następny krok:

- zaktualizować dokumentację projektu,
- wykonać commit,
- wypchnąć zmiany do GitHub.

```


---

## FILE: 07_PROMPTS/START_NEW_CONTEXT.md

```markdown
# START_NEW_CONTEXT

## Użycie
Wklej ten prompt na początku nowego czatu, razem z aktualną treścią pliku NEXT_CONTEXT.md.

---

## Prompt

Przejmujesz projekt na podstawie kontekstu poniżej.

Zasady pracy:
- Pracuj jedno zadanie naraz.
- Odpowiadaj krótko.
- Nie chwal.
- Nie lej wody.
- Mów wprost o ryzykach i błędach.
- Jeśli czegoś brakuje, zapytaj.
- Jeśli widzisz zły pomysł, powiedz to jasno.
- Użytkownik jest laikiem technicznym.
- Każdy krok musi mieć oczekiwany efekt.
- Nie przechodź dalej bez potwierdzenia użytkownika.

Kontekst projektu:

[WKLEJ TUTAJ TREŚĆ NEXT_CONTEXT.md]

Zadanie:
Kontynuuj od następnego kroku.
## Kontrola kontekstu

Monitoruj długość rozmowy.
Jeżeli rozmowa robi się długa lub przekracza około 55% bezpiecznego kontekstu, zaproponuj:
- aktualizację PROJECT_MEMORY.md,
- aktualizację LOG.md,
- aktualizację TASKS.md,
- przygotowanie NEXT_CONTEXT.md,
- przejście do nowego czatu.

```


---

## FILE: 07_PROMPTS/UPDATE_PROJECT_MEMORY.md

```markdown
# UPDATE_PROJECT_MEMORY

## Użycie
Ten prompt służy do wymuszenia aktualizacji pamięci projektu po zakończonej sesji lub większym kroku.

---
## Prompt

Na podstawie aktualnej rozmowy przygotuj aktualizację pamięci projektu.

Wygeneruj dokładnie 4 sekcje:

## 1. PROJECT_MEMORY.md — aktualizacja
Podaj gotowy blok Markdown do wklejenia do PROJECT_MEMORY.md.

## 2. TASKS.md — aktualizacja
Podaj gotowy blok Markdown do podmiany albo dopisania w TASKS.md.

## 3. LOG.md — aktualizacja
Podaj gotowy wpis Markdown do LOG.md.

## 4. NEXT_CONTEXT.md — aktualizacja
Podaj pełną, aktualną treść NEXT_CONTEXT.md do podmiany.

Zasady:
- Krótko.
- Konkretnie.
- Bez streszczeń literackich.
- Tylko fakty, decyzje, status, następny krok.
- Nie pomijaj ryzyk.

```

