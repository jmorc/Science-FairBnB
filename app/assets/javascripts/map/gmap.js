$(window).load(function() {
  loadScript();
});

function initialize() {
  var mapOptions = {
          center: new google.maps.LatLng(37.7833, -122.4167),
          zoom: 12,
          mapTypeId: google.maps.MapTypeId.NORMAL,
          panControl: true,
          scaleControl: false,
          streetViewControl: true,
          overviewMapControl: true
        };
        
  window.SciFairbnb.map = 
        new google.maps.Map(document.getElementById("map-canvas"),mapOptions);
        
  SciFairbnb.Collections.listings.forEach(function(listing){
    var position = new google.maps.LatLng(listing.get("latitude"), listing.get("longitude"));
    var marker = new google.maps.Marker({
      position: position,
      map: SciFairbnb.map
    });
  });
}


function loadScript() {
  var script = document.createElement('script');
  script.type = 'text/javascript';
  script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp' +
    '&libraries=drawing'+
    '&callback=initialize';
  document.body.appendChild(script);
}