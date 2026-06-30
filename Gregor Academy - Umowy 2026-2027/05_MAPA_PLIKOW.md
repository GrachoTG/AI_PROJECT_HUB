# Mapa plików — Gregor Academy Umowy 2026/2027

## Obsidian

Folder główny projektu:

`Gregor Academy - Umowy 2026-2027`

### Pliki pamięci projektowej

| Plik | Rola | Status |
|---|---|---|
| `01_ZASADY_PRACY.md` | zasady współpracy i prowadzenia projektu | utworzony |
| `02_STATUS_PROJEKTU.md` | aktualny status projektu | utworzony |
| `03_DECYZJE.md` | zapis decyzji projektowych | utworzony |
| `04_LOG_POSTEPU.md` | dziennik wykonanych etapów | utworzony |
| `05_MAPA_PLIKOW.md` | mapa plików i miejsc zapisu | utworzony |

## Google Sheets

Link do skoroszytu:

https://docs.google.com/spreadsheets/d/1rDvjaneoaFPi75Xzgc3u2fX95IPqaIZ3T0xKLegig3I/edit

Arkusz danych wejściowych:

`Zapisy`

Planowane arkusze techniczne:

| Arkusz | Rola | Status |
|---|---|---|
| `Zapisy` | źródło danych zapisów | istnieje |
| `Dni_wolne_26_27` | tabela dni wolnych | planowany |
| `Konfiguracja_26_27` | parametry roku szkolnego | planowany |
| `Typy_kursow_26_27` | typy kursów i liczba godzin | planowany |
| `Lista` | dane uporządkowane pod umowy | planowany/importowany |
| `Wzór` | szablon umowy | planowany/importowany |
| `Umowy_rejestr` | rejestr wygenerowanych umów | planowany |
| `GA_Log` | log skryptów | planowany |

## Google Drive

Folder na PDF-y:

https://drive.google.com/drive/u/0/folders/1qEV1gRlfTYvF-kySW13V0tiCVH29X2DY

ID folderu:

`1qEV1gRlfTYvF-kySW13V0tiCVH29X2DY`

## GitHub

Planowane repozytorium:

`gregor-academy-umowy-2026-2027`

Planowana struktura:

```text
gregor-academy-umowy-2026-2027/
├── README.md
├── CHANGELOG.md
├── docs/
│   ├── 01_ZASADY_PRACY.md
│   ├── 02_STATUS_PROJEKTU.md
│   ├── 03_DECYZJE.md
│   ├── 04_LOG_POSTEPU.md
│   └── 05_MAPA_PLIKOW.md
└── apps-script/
    ├── 00_CONFIG.gs
    ├── 01_DNI_WOLNE.gs
    ├── 02_TYPY_KURSOW.gs
    ├── 03_MAPOWANIE_DANYCH.gs
    ├── 04_GENERATOR_UMOW.gs
    └── 05_EKSPORT_PDF.gs
```

Status:

`planowane`

## VPS

Planowana lokalizacja:

`/home/gregor/ga-umowy-2026-2027/`

Status:

`planowane`

## n8n

Planowane workflow:

| Workflow | Rola | Status |
|---|---|---|
| `GA - Backup projektu` | backup plików i konfiguracji | planowane |
| `GA - Powiadomienie o umowie` | powiadomienie po wygenerowaniu umowy | planowane |
| `GA - Synchronizacja GitHub` | synchronizacja kodu z repozytorium | planowane |

## Zasada aktualizacji

Po każdym zakończonym etapie należy aktualizować:

1. `02_STATUS_PROJEKTU.md`
2. `04_LOG_POSTEPU.md`
3. w razie potrzeby `03_DECYZJE.md`
4. w razie potrzeby `05_MAPA_PLIKOW.md`
```

