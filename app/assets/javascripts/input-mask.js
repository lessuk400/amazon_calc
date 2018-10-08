//= require maskmoney

function getCurrencySign() {
  return $('.js-currency').find(":selected").data('currency');
}

function setCurrencyMask() {
  $('.js-currency').change(() => {
    $('.js-thousand').maskMoney(
      { thousands:   '',
        affixesStay: true,
        prefix:      getCurrencySign(),
        precision:   0 });

    $('.js-decimal').maskMoney(
      { decimal:     '.',
        thousands:   '',
        affixesStay: true,
        prefix:      getCurrencySign(),
        reverse:     true,
        precision:   2 });
  });
}

function setPercentageMask() {
  $('.js-percentage').maskMoney(
    { suffix:      ' %',
      thousands:   '',
      affixesStay: true,
      reverse:     true});
}

function setDimensionUnit() {
  $('.js-dimension').maskMoney(
    { suffix:      ' cm',
      precision:   0,
      thousands:   '',
      affixesStay: true,
      reverse:     true});
}

function setWeightUnit() {
  $('.js-weight').maskMoney(
    { suffix:      ' g',
      precision:   0,
      thousands:   '',
      affixesStay: true,
      reverse:     true});
}

function unmask() {
  $('.js-mask').each(function() {
    $(this).val($(this).val().match(/\d*[.]?[0-9]+/));
  })
}

document.addEventListener('turbolinks:load', () => {
  setWeightUnit();
  setPercentageMask();
  setDimensionUnit();
  setCurrencyMask();

  $('#calculation-form').submit(() => {
    return unmask();
  })
});