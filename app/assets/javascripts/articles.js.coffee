# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  #$("#search-loader").hide();

  $("#kb-search").on("ajax:success", (event, data) ->
    $("#kb-results").html(data.responseText))

  # Hides and shows 
  $(document).ajaxStart(->
    $("#search-loader").addClass "spinner"
  ).ajaxStop ->
    $("#search-loader").removeClass "spinner"

  $("#reset-button").on("click") ->
    $("#search").empty
    $("#kb-search").submit