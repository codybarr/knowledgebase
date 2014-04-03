# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $("#kb-search").on("ajax:success", (event, data) ->
    $("#kb-results").html(data.responseText))

  $("#reset-button").on("click") ->
    $("#search").empty
    $("#kb-search").submit