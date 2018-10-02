//= require maskmoney

function getCurrencySign() {
  return $('.js-currency').find(":selected").data('currency');
}

function setCurrencyMask() {
  $('.js-currency').change(() => {
    $('.js-mask').maskMoney(
        { thousands:   '',
          affixesStay: false,
          prefix:      getCurrencySign(),
          precision:   0 });

    $('.js-decimal').maskMoney(
        { decimal:     '.',
          affixesStay: false,
          prefix:      getCurrencySign(),
          reverse:     true,
          precision:   2 });
  });
}

document.addEventListener('turbolinks:load', () => {
  setCurrencyMask();
});