/**
 * Gregor Academy — Generator umów 2026/2027
 * Plik: 02_KONFIGURACJA.gs
 * Wersja: v0.2.0
 * Opis: Tworzenie arkusza konfiguracji roku szkolnego i parametrów umów.
 */

/**
 * Rozszerza menu projektu o konfigurację.
 *
 * Uwaga:
 * W Apps Script może istnieć tylko jedna funkcja onOpen().
 * Dlatego po wgraniu tego pliku podmienimy funkcję onOpen()
 * w pliku 01_DNI_WOLNE.gs na wersję zbiorczą.
 */
function gaCreateConfigSheet() {
  const sheet = gaGetOrCreateSheet_(GA_CONFIG.SHEETS.SETTINGS);

  sheet.clear();

  const headers = [
    'Klucz',
    'Wartość',
    'Opis'
  ];

  const rows = [
    [
      'SCHOOL_YEAR',
      GA_CONFIG.SCHOOL_YEAR,
      'Rok szkolny'
    ],
    [
      'LESSON_START',
      GA_CONFIG.DATES.LESSON_START,
      'Data rozpoczęcia zajęć'
    ],
    [
      'EXAM_COURSE_END',
      GA_CONFIG.DATES.EXAM_COURSE_END,
      'Data zakończenia kursów egzaminacyjnych'
    ],
    [
      'STANDARD_COURSE_END',
      GA_CONFIG.DATES.STANDARD_COURSE_END,
      'Data zakończenia kursów standardowych'
    ],
    [
      'BASE_DAYS',
      GA_CONFIG.DIDACTIC.BASE_DAYS,
      'Bazowa liczba dni dydaktycznych do rozliczeń'
    ],
    [
      'PDF_FOLDER_ID',
      GA_CONFIG.DRIVE.PDF_FOLDER_ID,
      'Folder Google Drive na wygenerowane PDF-y'
    ],
    [
      'CREATE_SHEET',
      GA_CONFIG.CONTRACT_OUTPUT.CREATE_SHEET,
      'Czy generować arkusz umowy'
    ],
    [
      'CREATE_PDF',
      GA_CONFIG.CONTRACT_OUTPUT.CREATE_PDF,
      'Czy generować PDF umowy'
    ]
  ];

  sheet.getRange(1, 1, 1, headers.length).setValues([headers]);
  sheet.getRange(2, 1, rows.length, headers.length).setValues(rows);

  sheet.getRange('A1:C1')
    .setFontWeight('bold')
    .setBackground('#cfe2f3');

  sheet.autoResizeColumns(1, headers.length);
  sheet.setFrozenRows(1);

  gaLog_('Utworzono / odświeżono arkusz konfiguracji', GA_CONFIG.SHEETS.SETTINGS);

  SpreadsheetApp.getUi().alert(
    'Gotowe: utworzono / odświeżono arkusz "' + GA_CONFIG.SHEETS.SETTINGS + '".'
  );
}
