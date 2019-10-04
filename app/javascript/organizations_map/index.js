document.addEventListener("turbolinks:load", function() {

  // TODO: map provider missing,
  // Use mapbox,
  // Public token:
  //   pk.eyJ1Ijoia2F2b3BpYyIsImEiOiJjazFjMGc1ZTAxcmVrM2xtcmN3ZjdiZndyIn0.3NEklL5iBzDehSrD1BFrwg

  var map = L.map('organizations_map', {
    center: [48.221026, 17.423961],
    zoom: 13
  });

  // L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token={accessToken}', {
  // 	attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
  // 	maxZoom: 18,
  // 	id: 'mapbox.streets',
  // 	accessToken: 'pk.eyJ1Ijoia2F2b3BpYyIsImEiOiJjazFjMGc1ZTAxcmVrM2xtcmN3ZjdiZndyIn0.3NEklL5iBzDehSrD1BFrwg'
  // }).addTo(map);

  L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', {
    attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>',
    maxZoom: 18
  }).addTo(map)

  var myIcon = L.icon({
      iconUrl: 'xmy-icon.png',
      iconSize: [38, 95],
      iconAnchor: [22, 94],
      popupAnchor: [-3, -76],
      shadowUrl: 'xmy-icon-shadow.png',
      shadowSize: [68, 95],
      shadowAnchor: [22, 94]
  });
  var marker = L.marker([48.221026, 17.423961], {icon: myIcon}).addTo(map);

  marker.bindPopup("<b>Penzión SENEC</b><br>1 bod za kávu")//.openPopup()

});
