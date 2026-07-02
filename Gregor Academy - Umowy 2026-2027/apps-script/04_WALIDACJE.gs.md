/**
 * Gregor Academy — Generator umów 2026/2027
 * Plik: 04_WALIDACJE.gs
 * Wersja: v0.5.1
 * Opis: Walidacje danych w arkuszu danych wejściowych.
 */

/**
 * Dodaje walidacje danych do arkusza danych wejściowych.
 */
function gaApplyInputValidations() {
  const sheet = gaGetOrCreateSheet_(GA_CONFIG.SHEETS.INPUT);

  const lastRow = Math.max(sheet.getMaxRows(), 200);
  const startRow = 2;
  const numRows = lastRow - 1;

  const headers = sheet.getRange(1, 1, 1, sheet.getLastColumn()).getValues()[0];

  const col = {};
  headers.forEach((header, index) => {
    col[header] = index + 1;
  });

  const requiredHeaders = [
    'Typ_kursu',
    'Przedmiot',
    'Poziom',
    'Liczba_rat',
    'Cena_miesięczna',
    'Liczba_miesięcy',
    'Rabat',
    'Status'
  ];

  requiredHeaders.forEach(header => {
    if (!col[header]) {
      throw new Error('Brak wymaganej kolumny w arkuszu danych wejściowych: ' + header);
    }
  });

  const courseTypeRule = SpreadsheetApp.newDataValidation()
    .requireValueInList(['STANDARD', 'INDYWIDUALNY', 'MATURALNY', 'EGZAMIN_8KL'], true)
    .setAllowInvalid(false)
    .build();

  const subjectRule = SpreadsheetApp.newDataValidation()
    .requireValueInList(['angielski', 'matematyka', 'polski'], true)
    .setAllowInvalid(false)
    .build();

  const levelRule = SpreadsheetApp.newDataValidation()
    .requireValueInList(['A1', 'A2', 'B1', 'B2', 'C1', 'C2', 'SP', 'LO', 'TECH', 'MATURA', 'EGZAMIN_8KL'], true)
    .setAllowInvalid(false)
    .build();

  const installmentsRule = SpreadsheetApp.newDataValidation()
    .requireValueInList(['1', '3', '6', '9', '12'], true)
    .setAllowInvalid(false)
    .build();

  const monthsRule = SpreadsheetApp.newDataValidation()
    .requireNumberBetween(1, 12)
    .setAllowInvalid(false)
    .build();

  const discountRule = SpreadsheetApp.newDataValidation()
    .requireNumberBetween(0, 1000)
    .setAllowInvalid(false)
    .build();

  const statusRule = SpreadsheetApp.newDataValidation()
    .requireValueInList(['NOWY', 'DO_GENEROWANIA', 'WYGENEROWANO', 'BŁĄD', 'ANULOWANY'], true)
    .setAllowInvalid(false)
    .build();

  sheet.getRange(startRow, col['Typ_kursu'], numRows, 1).setDataValidation(courseTypeRule);
  sheet.getRange(startRow, col['Przedmiot'], numRows, 1).setDataValidation(subjectRule);
  sheet.getRange(startRow, col['Poziom'], numRows, 1).setDataValidation(levelRule);
  sheet.getRange(startRow, col['Liczba_rat'], numRows, 1).setDataValidation(installmentsRule);
  sheet.getRange(startRow, col['Liczba_miesięcy'], numRows, 1).setDataValidation(monthsRule);
  sheet.getRange(startRow, col['Rabat'], numRows, 1).setDataValidation(discountRule);
  sheet.getRange(startRow, col['Status'], numRows, 1).setDataValidation(statusRule);

  sheet.getRange(startRow, col['Cena_miesięczna'], numRows, 1)
    .setNumberFormat('#,##0.00 zł');

  sheet.getRange(startRow, col['Liczba_miesięcy'], numRows, 1)
    .setNumberFormat('0');

  sheet.getRange(startRow, col['Rabat'], numRows, 1)
    .setNumberFormat('#,##0.00 zł');

  gaLog_('Dodano walidacje danych do arkusza danych wejściowych', GA_CONFIG.SHEETS.INPUT);

  SpreadsheetApp.getUi().alert(
    'Gotowe: dodano walidacje danych do arkusza "' + GA_CONFIG.SHEETS.INPUT + '".'
  );
}
