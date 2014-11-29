$(window).load(function() {
  loadScript();
});

function initialize() {
  var mapOptions = {
          center: new google.maps.LatLng(37.7833, -122.4167),
          zoom: 8,
          mapTypeId: google.maps.MapTypeId.NORMAL,
          panControl: true,
          scaleControl: false,
          streetViewControl: true,
          overviewMapControl: true
        };
  var map = new google.maps.Map(document.getElementById("map-canvas"),mapOptions);
}

function loadScript() {
  var script = document.createElement('script');
  script.type = 'text/javascript';
  script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp' +
    '&libraries=drawing'+
    '&callback=initialize';
  document.body.appendChild(script);
}