/**
 * Gregor Academy — Generator umów 2026/2027
 * Plik: 00_CONFIG.gs
 * Wersja: v0.1.0
 * Opis: Główna konfiguracja projektu.
 */

const GA_CONFIG = {
  VERSION: 'v0.1.0',

  SCHOOL_YEAR: '2026/2027',

  SHEETS: {
    SOURCE_SIGNUPS: 'Zapisy',
    DAYS_OFF: 'Dni_wolne_26_27',
    COURSE_TYPES: 'Typy_kursow_26_27',
    SETTINGS: 'Konfiguracja_26_27',
    CONTRACT_TEMPLATE: 'Wzór',
    CONTRACT_REGISTER: 'Umowy_rejestr',
    LOG: 'GA_Log'
  },

  DATES: {
    LESSON_START: '2026-09-07',
    EXAM_COURSE_END: '2027-04-30',
    STANDARD_COURSE_END: '2027-05-31'
  },

  DIDACTIC: {
    BASE_DAYS: 32
  },

  DRIVE: {
    PDF_FOLDER_ID: '1qEV1gRlfTYvF-kySW13V0tiCVH29X2DY'
  },

  CONTRACT_OUTPUT: {
    CREATE_SHEET: true,
    CREATE_PDF: true
  }
};

/**
 * Pobiera aktywny skoroszyt Google Sheets.
 */
function gaGetSpreadsheet_() {
  return SpreadsheetApp.getActiveSpreadsheet();
}

/**
 * Pobiera arkusz po nazwie.
 */
function gaGetSheet_(sheetName) {
  return gaGetSpreadsheet_().getSheetByName(sheetName);
}

/**
 * Pobiera arkusz po nazwie albo tworzy go, jeśli nie istnieje.
 */
function gaGetOrCreateSheet_(sheetName) {
  const ss = gaGetSpreadsheet_();
  let sheet = ss.getSheetByName(sheetName);

  if (!sheet) {
    sheet = ss.insertSheet(sheetName);
  }

  return sheet;
}

/**
 * Prosty log techniczny.
 */
function gaLog_(action, details) {
  const sheet = gaGetOrCreateSheet_(GA_CONFIG.SHEETS.LOG);

  if (sheet.getLastRow() === 0) {
    sheet.appendRow([
      'Timestamp',
      'Wersja',
      'Akcja',
      'Szczegóły'
    ]);
  }

  sheet.appendRow([
    new Date(),
    GA_CONFIG.VERSION,
    action,
    details || ''
  ]);
}
