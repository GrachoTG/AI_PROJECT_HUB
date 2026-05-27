# NEXT_CONTEXT — AI_Context_System

## Aktualny status

Context Loader MVP został uruchomiony.

Działa lokalny workflow:

```text
python .\tools\build_context.py
```

generujący:

```text
AI_START_PROMPT.md
```

Repozytorium jest czyste, a loader jest śledzony przez Git.

## Najbliższe zadanie

Przetestować pełny cykl pracy:

1. uruchomić `tools/build_context.py`,
2. otworzyć nowy czat AI,
3. wkleić zawartość `AI_START_PROMPT.md`,
4. sprawdzić, czy AI poprawnie odtwarza:
   - cel projektu,
   - aktualny status,
   - zasady pracy,
   - jedno następne zadanie.

## Nie robić teraz

- Nie wdrażać jeszcze RAG.
- Nie wdrażać n8n.
- Nie wdrażać agentów.
- Nie komplikować struktury.
- Nie dodawać nowych narzędzi bez potrzeby.
