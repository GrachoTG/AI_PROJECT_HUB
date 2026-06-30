/**
 * Gregor Academy — Generator umów 2026/2027
 * Plik: 01_DNI_WOLNE.gs
 * Wersja: v0.1.0
 * Opis: Tworzenie tabeli dni wolnych.
 */

/**
 * Dodaje menu projektu po otwarciu arkusza.
 */
function onOpen() {
  SpreadsheetApp.getUi()
    .createMenu('GA Umowy')
    .addItem('01. Utwórz / odśwież dni wolne', 'gaCreateDaysOffSheet')
	.addItem('02. Utwórz / odśwież konfigurację', 'gaCreateConfigSheet')
    .addToUi();
}

/**
 * Tworzy lub odświeża arkusz Dni_wolne_26_27.
 */
function gaCreateDaysOffSheet() {
  const sheet = gaGetOrCreateSheet_(GA_CONFIG.SHEETS.DAYS_OFF);

  sheet.clear();

  const headers = [
    'Typ',
    'Nazwa',
    'Data od',
    'Data do',
    'Uwagi'
  ];

  const rows = [
    [
      'Przerwa',
      'Zimowa przerwa świąteczna',
      new Date('2026-12-23'),
      new Date('2027-01-06'),
      'Brak zajęć'
    ],
    [
      'Przerwa',
      'Ferie zimowe',
      new Date('2027-02-15'),
      new Date('2027-02-28'),
      'Brak zajęć'
    ],
    [
      'Przerwa',
      'Wiosenna przerwa świąteczna',
      new Date('2027-03-25'),
      new Date('2027-03-30'),
      'Brak zajęć'
    ],
    [
      'Święto',
      'Wszystkich Świętych',
      new Date('2026-11-01'),
      new Date('2026-11-01'),
      'Święto państwowe'
    ],
    [
      'Święto',
      'Święto Niepodległości',
      new Date('2026-11-11'),
      new Date('2026-11-11'),
      'Święto państwowe'
    ],
    [
      'Święto',
      'Trzech Króli',
      new Date('2027-01-06'),
      new Date('2027-01-06'),
      'Święto państwowe'
    ],
    [
      'Święto',
      'Święto Pracy',
      new Date('2027-05-01'),
      new Date('2027-05-01'),
      'Święto państwowe'
    ],
    [
      'Święto',
      'Święto Konstytucji 3 Maja',
      new Date('2027-05-03'),
      new Date('2027-05-03'),
      'Święto państwowe'
    ],
    [
      'Święto',
      'Boże Ciało',
      new Date('2027-05-27'),
      new Date('2027-05-27'),
      'Święto państwowe'
    ]
  ];

  sheet.getRange(1, 1, 1, headers.length).setValues([headers]);
  sheet.getRange(2, 1, rows.length, headers.length).setValues(rows);

  sheet.getRange('A1:E1')
    .setFontWeight('bold')
    .setBackground('#d9ead3');

  sheet.getRange(2, 3, rows.length, 2)
    .setNumberFormat('yyyy-mm-dd');

  sheet.autoResizeColumns(1, headers.length);
  sheet.setFrozenRows(1);

  gaLog_('Utworzono / odświeżono arkusz dni wolnych', GA_CONFIG.SHEETS.DAYS_OFF);

  SpreadsheetApp.getUi().alert(
    'Gotowe: utworzono / odświeżono arkusz "' + GA_CONFIG.SHEETS.DAYS_OFF + '".'
  );
}
