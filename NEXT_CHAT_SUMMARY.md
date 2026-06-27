# NEXT_CHAT_SUMMARY

## Stan projektu

Pracujemy nad systemem `AI_Context_System`, ktĂłrego celem jest utrzymanie ciÄ…gĹ‚oĹ›ci pracy AI przez automatycznie generowany kontekst z repozytorium `AI_PROJECT_HUB`.

System ma dziaĹ‚aÄ‡ wedĹ‚ug zasad:

1. Jedno zadanie naraz.
2. Minimum rÄ™cznego kopiuj/wklej.
3. Minimum tokenĂłw, czasu i kosztĂłw.
4. Automatyzacja zamiast rÄ™cznego zarzÄ…dzania listÄ… plikĂłw.
5. AI ma znaÄ‡ indeks wszystkich plikĂłw, ale peĹ‚nÄ… treĹ›Ä‡ tylko plikĂłw istotnych.
6. Pliki nowe i nieznane majÄ… byÄ‡ wykrywane jako `unknown`, a nie ignorowane.

## Co juĹĽ ustalono

1. Automatyczny scanner repozytorium w `tools/build_context.py` dziaĹ‚a.
2. `AI_CONTEXT_MANIFEST.json` steruje klasyfikacjÄ… i trybem Ĺ‚adowania plikĂłw.
3. `AI_CONTEXT_FILE_INDEX.md` pokazuje mapÄ™ repozytorium.
4. `AI_START_PROMPT.md` generuje peĹ‚ny prompt startowy.
5. Problemem byĹ‚o zaĹ›miecanie promptu przez peĹ‚nÄ… treĹ›Ä‡ skryptĂłw pomocniczych.
6. SzczegĂłlnie diagnostyczny `tools/ai_audit_pack.ps1` nie powinien byÄ‡ staĹ‚ym elementem systemu.
7. Pliki techniczne/audytowe powinny byÄ‡ oznaczane jako `generated` i trafiaÄ‡ tylko do indeksu.
8. `NEXT_CHAT_SUMMARY.md` byĹ‚ wczeĹ›niej `unknown`; teraz jego rola to handoff miÄ™dzy czatami.

## Aktualny problem

System nadal wymaga dopracowania klasyfikacji skryptĂłw:

- `tools/build_context.py` jest rdzeniem systemu i moĹĽe byÄ‡ Ĺ‚adowany w peĹ‚ni.
- `tools/git_sync.ps1` jest narzÄ™dziem uĹĽytkowym.
- `tools/n8n_maintenance.sh` jest narzÄ™dziem automatyzacji/VPS.
- Docelowo trzeba rozdzieliÄ‡ kategoriÄ™ `script` na:
  - `script_core`
  - `script_utility`

## NajbliĹĽsze rekomendowane zadanie

Nie robiÄ‡ duĹĽego refaktoru.

NajbliĹĽszy krok:

1. ZmodyfikowaÄ‡ `tools/build_context.py`, ĹĽeby klasyfikowaĹ‚:
   - `tools/build_context.py` jako `script_core`
   - pozostaĹ‚e pliki w `tools/` jako `script_utility`
2. ZmodyfikowaÄ‡ `AI_CONTEXT_MANIFEST.json`:
   - `script_core` w `full_load_categories`
   - `script_utility` w `index_only_categories`
3. UruchomiÄ‡ `python .\tools\build_context.py`
4. SprawdziÄ‡, czy `AI_START_PROMPT.md` przestaĹ‚ zawieraÄ‡ peĹ‚nÄ… treĹ›Ä‡ narzÄ™dzi pomocniczych.

## WaĹĽna zasada dla nastÄ™pnego AI

Nie pisaÄ‡ dĹ‚ugich planĂłw.

Zawsze:

1. Odczytaj `NEW_CHAT_START_HERE.md`.
2. Podaj krĂłtkie podsumowanie.
3. WskaĹĽ dokĹ‚adnie jedno nastÄ™pne zadanie.
4. JeĹ›li trzeba wykonaÄ‡ pracÄ™ na repozytorium, przygotuj jeden skrypt albo jedno polecenie.
5. Nie kaĹĽ uĹĽytkownikowi rÄ™cznie wklejaÄ‡ wielu plikĂłw, jeĹ›li da siÄ™ wygenerowaÄ‡ jeden plik wynikowy.

