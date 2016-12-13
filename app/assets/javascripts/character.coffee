$(document).on 'turbolinks:load', ->
  for stat in stats
    $("##{stat}_base").data( 'oldVal', $("##{stat}_base").val() )
    $("##{stat}_chapter").data( 'oldVal', $("##{stat}_chapter").val() )

  $('.base').bind 'change', () ->
    $( this ).val(30) unless parseFloat( $( this ).val() ) in [30..50]
    if recalculate()
      $( this ).data( 'oldVal', $( this ).val() )
    else
      resetValues()
  $('.chapter').bind 'change', () ->
    $( this ).val(0) unless parseFloat( $( this ).val() ) in [-10..10]
    if recalculate()
      $( this ).data( 'oldVal', $( this ).val() )
    else
      resetValues()


recalculate = () ->
  for stat in stats
    base = parseInt($("##{stat}_base").val())
    $("##{stat}_total").val( base + parseInt($("##{stat}_chapter").val()) )
    if base <= 35
      $("##{stat}_cost").val( base - 30 )
    else if base <= 40
      $("##{stat}_cost").val( 2 * (base - 35) + 5 )
    else if base <= 45
      $("##{stat}_cost").val( 3 * (base - 40) + 15 )
    else if base <= 50
      $("##{stat}_cost").val( 4 * (base - 45) + 30 )

  grandTotal = 0
  for stat in stats
    grandTotal += parseInt($("##{stat}_cost").val())
  $('#remaining').val(200 - grandTotal)

  return 200 - grandTotal >= 0

resetValues = () ->
  for stat in stats
    $("##{stat}_base").val( $("##{stat}_base").data('oldVal') )
    $("##{stat}_chapter").val( $("##{stat}_chapter").data('oldVal') )
  recalculate()
