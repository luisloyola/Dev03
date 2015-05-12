# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  
  $('.btn-ocultar').hide()
  $('.btn-mostrar-grafos').hide()
  $('.panel').hide()

  $('.btn-ocultar').click ->
    $('.btn-ocultar').hide()
    $('.panel').hide()
    $('.btn-mostrar').show()
    return  

  $('.btn-mostrar').click ->
    $('.btn-mostrar').hide()
    $('.btn-ocultar').show()
    $('.panel').show()
    return    

  $('.btn-ocultar-grafos').click ->
    $('.btn-mostrar-grafos').show()
    $('.grafos').hide()
    $('.btn-ocultar-grafos').hide()
    return

  $('.btn-mostrar-grafos').click ->
    $('.btn-mostrar-grafos').hide()
    $('.grafos').show()
    $('.btn-ocultar-grafos').show()
    return  
    
  return