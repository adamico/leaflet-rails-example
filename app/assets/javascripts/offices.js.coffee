# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ = jQuery

$ ->
  map = L.map('map').setView([48.856, 2.35], 13)

  cloudmade_api = $("#map").data("cloudmadekey")
  L.tileLayer("http://{s}.tile.cloudmade.com/#{cloudmade_api}/997/256/{z}/{x}/{y}.png", {
      attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://cloudmade.com">CloudMade</a>',
      maxZoom: 18
  }).addTo(map)
  for office in $(".office")
    $office = $(office)
    lat = $office.data("latitude")
    lon = $office.data("longitude")
    name = $office.data("name")
    details = $office.data("details")
    marker = L.marker([lat, lon]).addTo(map)
    marker.bindPopup("<b>#{name}</b><br>#{details}")
