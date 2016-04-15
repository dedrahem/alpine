
$(window).ready(function(){var handler = Gmaps.build('Google');
  handler.buildMap({ internal: {id: 'map'}}, function()
  {var markers = handler.addMarkers(<%=raw @hash.to_json %>);
  ([function displayOnMap(position){var marker = handler.addMarker(
    {lat: position.coords.latitude, lng: position.coords.longitude});
    handler.map.centerOn(marker);}]);
    handler.bounds.extendWith(markers);
    handler.fitMapToBounds();
    }));
