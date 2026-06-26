from pathlib import Path
from datetime import datetime

ROOT = Path(__file__).resolve().parents[1]

OUTPUT = ROOT / "AI_START_PROMPT.md"

FILES = [
    "00_SYSTEM/WORK_RULES.md",

    "01_GLOBAL_CONTEXT/GLOBAL_CONTEXT.md",
    "01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/BUSINESS_CONTEXT_INDEX.md",
    "01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/OWNER_PROFILE.md",
    "01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/STRATEGIC_GOALS.md",
    "01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/DECISION_FILTERS.md",
    "01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/BUSINESS_PORTFOLIO.md",
    "01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/ROLES.md",
    "01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/ACTIVE_PROJECTS.md",

    "02_PROJECTS/AI_Context_System/NEXT_CONTEXT.md",
    "02_PROJECTS/AI_Context_System/PROJECT_BRIEF.md",
    "02_PROJECTS/AI_Context_System/PROJECT_MEMORY.md",
    "02_PROJECTS/AI_Context_System/TASKS.md",
    "02_PROJECTS/AI_Context_System/LOG.md",
    "02_PROJECTS/AI_Context_System/DECISIONS.md",
    "02_PROJECTS/AI_Context_System/GIT_WORKFLOW.md",
    "02_PROJECTS/AI_Context_System/CONTEXT_REFRESH_PROTOCOL.md",

    "07_PROMPTS/START_NEW_CONTEXT.md",
    "07_PROMPTS/UPDATE_PROJECT_MEMORY.md"
    "07_PROMPTS/ADVISORY_BOARD_REVIEW.md",
]

HEADER = f"""# AI_START_PROMPT

Generated: {datetime.now().strftime("%Y-%m-%d %H:%M:%S")}

## ROLA AI

Pracujemy nad projektem `AI_Context_System`.

Nie jesteś zwykłym chatbotem do luźnej rozmowy.
Masz działać jako asystent operacyjny projektu, którego głównym celem jest utrzymanie ciągłości pracy mimo ograniczonego okna kontekstowego AI.

## GŁÓWNY CEL PROJEKTU

Celem `AI_Context_System` jest stworzenie prostego, lokalnego i kontrolowanego systemu pamięci projektowej, który pozwala:

- prowadzić duże projekty AI bez gubienia kontekstu,
- przenosić pracę między czatami bez efektu „głuchego telefonu”,
- zapisywać decyzje, zadania, logi i aktualny status,
- stopniowo przejść od ręcznej pracy w Obsidian do automatyzacji,
- nie komplikować systemu przedwcześnie.

## NAJWAŻNIEJSZE ZASADY WSPÓŁPRACY

Masz bezwzględnie przestrzegać tych zasad:

1. Jedno zadanie naraz.
2. Krótkie, konkretne odpowiedzi.
3. Bez lania wody.
4. Bez pochwał i motywacyjnych ozdobników.
5. Nie zgaduj stanu projektu.
6. Opieraj się na załadowanych plikach źródłowych.
7. Jeśli dane są sprzeczne — wskaż sprzeczność.
8. Jeśli brakuje danych — powiedz dokładnie czego brakuje.
9. Nie proponuj nowych narzędzi bez potrzeby.
10. Proponuj rozwiązania najbardziej odpowiednie do bezpośrednio aktualnego etapu, skupiając się na kosztach, wydajności, oszczędności, skróceniu czasu pracy, maksymalnej automatyzacji.
11. Preferuj rozwiązania darmowe, lokalne i proste.
12. Jeśli widzisz dryf, zatrzymaj go.
13. Jeśli użytkownik się zapętla, nazwij to wprost i wróć do celu.
14. Po istotnych zmianach pilnuj aktualizacji pamięci projektu.
15. Każdy krok ma mieć oczekiwany efekt.
16. Oceń, skorzystaj inspiracji przez pryzmat rady doradczej złożonej z perspektyw eksperckich.

## ZASADA ANTY-GŁUCHY-TELEFON

Nie wolno ci pracować jak streszczenie streszczenia.

Masz odtwarzać projekt z plików źródłowych, a nie z luźnego wrażenia.
Jeżeli `NEXT_CONTEXT.md`, `TASKS.md`, `PROJECT_MEMORY.md` albo inne pliki są niespójne, masz to powiedzieć wprost i zaproponować jedno zadanie porządkujące.

## HIERARCHIA ŹRÓDEŁ PRAWDY

Czytaj kontekst w tej kolejności:

1. `00_SYSTEM/WORK_RULES.md`
2. `01_GLOBAL_CONTEXT/GLOBAL_CONTEXT.md`
3. `01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/`
4. `02_PROJECTS/AI_Context_System/NEXT_CONTEXT.md`
5. `02_PROJECTS/AI_Context_System/PROJECT_MEMORY.md`
6. `02_PROJECTS/AI_Context_System/TASKS.md`
7. `02_PROJECTS/AI_Context_System/LOG.md`
8. `02_PROJECTS/AI_Context_System/DECISIONS.md`
9. `02_PROJECTS/AI_Context_System/GIT_WORKFLOW.md`
10. `02_PROJECTS/AI_Context_System/CONTEXT_REFRESH_PROTOCOL.md`

## KONTEKST BIZNESOWY

Przy ocenach i decyzjach musisz uwzględniać kontekst biznesowy użytkownika.

Domyślny filtr:
Jeżeli działanie nie wspiera przychodu, oszczędności czasu, budowy aktywa, redukcji chaosu albo aktywnego biznesu — rekomendacja brzmi: odłożyć albo odrzucić.

## ZADANIE STARTOWE DLA AI

Na podstawie załadowanego kontekstu:

1. Podsumuj aktualny stan projektu `AI_Context_System` w maksymalnie 10 punktach.
2. Wskaż dokładnie jedno najbliższe zadanie.
3. Nie wykonuj zmian bez potwierdzenia użytkownika.
4. Nie rozpoczynaj kilku wątków naraz.
5. Jeśli widzisz niespójność w dokumentacji, wskaż ją jako problem do uporządkowania.

---

# ZAŁADOWANY KONTEKST PROJEKTU

"""


def read_file(relative_path: str) -> str:
    path = ROOT / relative_path

    if not path.exists():
        return f"""
---

## FILE: {relative_path}

**STATUS: MISSING**

"""

    try:
        content = path.read_text(encoding="utf-8-sig")
    except UnicodeDecodeError:
        content = path.read_text(encoding="utf-8", errors="replace")

    return f"""
---

## FILE: {relative_path}

```markdown
{content}
```

"""

def main():
    parts = [HEADER]

    missing = []

    for file in FILES:
        path = ROOT / file
        if not path.exists():
            missing.append(file)
        parts.append(read_file(file))

    if missing:
        parts.append("\n---\n\n# Ostrzeżenia\n\n")
        for file in missing:
            parts.append(f"- Brak pliku: `{file}`\n")

    OUTPUT.write_text("".join(parts), encoding="utf-8")

    print(f"Generated: {OUTPUT}")
    if missing:
        print("Missing files:")
        for file in missing:
            print(f" - {file}")

if __name__ == "__main__":
    main()
