calculate = ->
  $.ajax '/exchange',
      type: 'POST'
      dataType: 'json'
      data: {
              currency: $("#currency").val(),
              currency_destination: $("#currency_destination").val(),
              quantity: $("#quantity").val()
            }
      error: (jqXHR, textStatus, errorThrown) ->
        alert textStatus
      success: (data, textStatus, jqXHR) ->
        $('#result').val(data.value)
    return false;


$(document).ready ->
  $('#currency_destination, #currency, #quantity').change ->
    calculate()

  $('#change-money').on 'click', (event) ->
    currency = $("#currency").val();
    $("#currency").val($("#currency_destination").val());
    $("#currency_destination").val(currency);
    calculate()
