/**
 * Gregor Academy — Generator umów 2026/2027
 * Plik: 05_OBLICZENIA.gs
 * Wersja: v0.5.0
 * Opis: Funkcje obliczeniowe dla umów.
 */

/**
 * Oblicza wartości finansowe umowy.
 *
 * @param {number} monthlyPrice Cena miesięczna kursu.
 * @param {number} monthsCount Liczba miesięcy kursu.
 * @param {number} discountAmount Kwota rabatu.
 * @param {number} installmentsCount Liczba rat.
 * @return {Object} Wynik obliczeń.
 */
function gaCalculateContractValues_(monthlyPrice, monthsCount, discountAmount, installmentsCount) {
  const price = Number(monthlyPrice) || 0;
  const months = Number(monthsCount) || 0;
  const discount = Number(discountAmount) || 0;
  const installments = Number(installmentsCount) || 1;

  if (price < 0) {
    throw new Error('Cena miesięczna nie może być ujemna.');
  }

  if (months <= 0) {
    throw new Error('Liczba miesięcy musi być większa od 0.');
  }

  if (discount < 0) {
    throw new Error('Rabat nie może być ujemny.');
  }

  if (installments <= 0) {
    throw new Error('Liczba rat musi być większa od 0.');
  }

  const totalPrice = roundMoney_(price * months);
  const finalDiscount = Math.min(discount, totalPrice);
  const priceAfterDiscount = roundMoney_(totalPrice - finalDiscount);
  const installmentAmount = roundMoney_(priceAfterDiscount / installments);

  return {
    monthlyPrice: roundMoney_(price),
    monthsCount: months,
    totalPrice: totalPrice,
    discountAmount: roundMoney_(finalDiscount),
    priceAfterDiscount: priceAfterDiscount,
    installmentsCount: installments,
    installmentAmount: installmentAmount
  };
}

/**
 * Zaokrągla kwotę do 2 miejsc po przecinku.
 *
 * @param {number} value Kwota.
 * @return {number} Kwota zaokrąglona do 2 miejsc po przecinku.
 */
function roundMoney_(value) {
  return Math.round((Number(value) || 0) * 100) / 100;
}

/**
 * Test pomocniczy obliczeń.
 * Funkcja tylko do ręcznego uruchamiania w Apps Script.
 */
function gaTestCalculateContractValues() {
  const result = gaCalculateContractValues_(350, 10, 200, 10);

  Logger.log(JSON.stringify(result, null, 2));

  SpreadsheetApp.getUi().alert(
    'Test obliczeń zakończony. Sprawdź wynik w Dzienniku wykonania.'
  );
}
/**
 * Oblicza wartości finansowe dla wszystkich aktywnych wierszy
 * w arkuszu danych wejściowych i zapisuje wyniki w kolumnach wynikowych.
 */
function gaCalculateInputSheetValues() {
  const sheet = gaGetOrCreateSheet_(GA_CONFIG.SHEETS.INPUT);
  const data = sheet.getDataRange().getValues();

  if (data.length < 2) {
    SpreadsheetApp.getUi().alert('Brak danych do obliczenia.');
    return;
  }

  const headers = data[0];

  const col = {};
  headers.forEach((header, index) => {
    col[header] = index;
  });

  const requiredHeaders = [
    'ID_ucznia',
    'Cena_miesięczna',
    'Liczba_miesięcy',
    'Rabat',
    'Liczba_rat',
    'Status'
  ];

  requiredHeaders.forEach(header => {
    if (col[header] === undefined) {
      throw new Error('Brak wymaganej kolumny: ' + header);
    }
  });

  const resultHeaders = [
    'Cena_całkowita',
    'Rabat_zastosowany',
    'Kwota_po_rabacie',
    'Kwota_raty'
  ];

  resultHeaders.forEach(header => {
    if (col[header] === undefined) {
      sheet.getRange(1, sheet.getLastColumn() + 1).setValue(header);
    }
  });

  const refreshedData = sheet.getDataRange().getValues();
  const refreshedHeaders = refreshedData[0];

  const refreshedCol = {};
  refreshedHeaders.forEach((header, index) => {
    refreshedCol[header] = index;
  });

  const output = [];
  let processedCount = 0;

  for (let i = 1; i < refreshedData.length; i++) {
    const row = refreshedData[i];

    const studentId = row[refreshedCol['ID_ucznia']];
    const status = row[refreshedCol['Status']];

    if (!studentId || status === 'ANULOWANY') {
      output.push(['', '', '', '']);
      continue;
    }

    const calculation = gaCalculateContractValues_(
      row[refreshedCol['Cena_miesięczna']],
      row[refreshedCol['Liczba_miesięcy']],
      row[refreshedCol['Rabat']],
      row[refreshedCol['Liczba_rat']]
    );

    output.push([
      calculation.totalPrice,
      calculation.discountAmount,
      calculation.priceAfterDiscount,
      calculation.installmentAmount
    ]);

    processedCount++;
  }

  if (output.length > 0) {
    sheet
      .getRange(
        2,
        refreshedCol['Cena_całkowita'] + 1,
        output.length,
        resultHeaders.length
      )
      .setValues(output);

    sheet
      .getRange(
        2,
        refreshedCol['Cena_całkowita'] + 1,
        output.length,
        resultHeaders.length
      )
      .setNumberFormat('#,##0.00 zł');
  }

  gaLog_(
    'Obliczono wartości finansowe dla arkusza danych wejściowych',
    'Przetworzono wierszy: ' + processedCount
  );

  SpreadsheetApp.getUi().alert(
    'Gotowe: obliczono wartości finansowe dla ' + processedCount + ' wierszy.'
  );
}
