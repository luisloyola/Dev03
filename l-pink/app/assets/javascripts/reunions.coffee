# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->

  $('.btn-compromiso').click ->
    $('.task').hide()
    $('.compromiso').show()
    return

  $('.btn-acuerdo').click ->
    $('.task').hide()
    $('.acuerdo').show()
    return

  $('.btn-quitar').click ->
    $('.task').show()
    return
    
  return