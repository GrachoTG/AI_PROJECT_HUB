/**
 * Gregor Academy — Generator umów 2026/2027
 * Plik: 03_DANE_WEJSCIOWE.gs
 * Wersja: v0.3.0
 * Opis: Tworzenie arkusza danych wejściowych uczniów i kursów.
 */

/**
 * Tworzy / odświeża arkusz danych wejściowych.
 */
function gaCreateInputSheet() {
  const sheet = gaGetOrCreateSheet_(GA_CONFIG.SHEETS.INPUT);

  sheet.clear();

  const headers = [
    'ID_Ucznia',
    'Imię_ucznia',
    'Nazwisko_ucznia',
    'Imię_rodzica_opiekuna',
    'Nazwisko_rodzica_opiekuna',
    'Email',
    'Telefon',
    'Ulica_i_nr',
    'Kod_pocztowy',
    'Miasto',
    'Typ_kursu',
    'Przedmiot',
    'Poziom',
    'Liczba_rat',
    'Cena_miesięczna',
	'Liczba_miesięcy',
    'Rabat',
    'Uwagi',
    'Status'
  ];

  const exampleRows = [
    [
      'GA-0001',
      'Jan',
      'Kowalski',
      'Anna',
      'Kowalska',
      'anna.kowalska@example.com',
      '500600700',
      'ul. Przykładowa 1',
      '00-001',
      'Warszawa',
      'STANDARD',
      'angielski',
      'A2',
      10,
      320,
      0,
      'Przykładowy rekord — można usunąć',
      'NOWY'
    ]
  ];

  sheet.getRange(1, 1, 1, headers.length).setValues([headers]);
  sheet.getRange(2, 1, exampleRows.length, headers.length).setValues(exampleRows);

  sheet.getRange(1, 1, 1, headers.length)
    .setFontWeight('bold')
    .setBackground('#d9ead3');

  sheet.setFrozenRows(1);
  sheet.autoResizeColumns(1, headers.length);

  gaLog_('Utworzono / odświeżono arkusz danych wejściowych', GA_CONFIG.SHEETS.INPUT);

  SpreadsheetApp.getUi().alert(
    'Gotowe: utworzono / odświeżono arkusz "' + GA_CONFIG.SHEETS.INPUT + '".'
  );
}
