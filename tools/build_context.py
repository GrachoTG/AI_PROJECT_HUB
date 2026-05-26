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
    "01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/ACTIVE_PROJECTS.md",

    "02_PROJECTS/AI_Context_System/NEXT_CONTEXT.md",
    "02_PROJECTS/AI_Context_System/PROJECT_BRIEF.md",
    "02_PROJECTS/AI_Context_System/PROJECT_MEMORY.md",
    "02_PROJECTS/AI_Context_System/TASKS.md",
    "02_PROJECTS/AI_Context_System/DECISIONS.md",
    "02_PROJECTS/AI_Context_System/CONTEXT_REFRESH_PROTOCOL.md",

    "07_PROMPTS/START_NEW_CONTEXT.md",
    "07_PROMPTS/UPDATE_PROJECT_MEMORY.md",
]

HEADER = f"""# AI_START_PROMPT

Generated: {datetime.now().strftime("%Y-%m-%d %H:%M:%S")}

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
