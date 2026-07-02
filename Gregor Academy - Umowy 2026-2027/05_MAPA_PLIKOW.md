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