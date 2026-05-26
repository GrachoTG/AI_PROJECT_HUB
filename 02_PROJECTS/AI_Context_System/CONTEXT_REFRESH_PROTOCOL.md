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
