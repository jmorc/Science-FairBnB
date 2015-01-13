SciFairbnb.Views.MapShow = Backbone.View.extend({
  mapOptions: {
            center: new google.maps.LatLng(37.5835, -122.3202),
            zoom: 10,
            mapTypeId: google.maps.MapTypeId.TERRAIN,
            panControl: true,
            scaleControl: false,
            streetViewControl: true,
            overviewMapControl: true
          },
    
  addMarker: function(listing){
    var position = new google.maps.LatLng(listing.get("latitude"), listing.get("longitude"));
    var title = listing.get('title');
    var imageContent = "<img src=" + listing.escape("image_url") 
      + " style='width:160px;height:150px' class='img-rounded'>";
    var showLink = "<div><a href='#/listings/" + listing.id + "'>" + title + "</a></div>";
    
    var infowindow = new google.maps.InfoWindow({
        content: imageContent  + showLink
      });
    
    var icon_image = {
        url: 'assets/map_icon.png',
        size: new google.maps.Size(32, 32),
        origin: new google.maps.Point(0,0),
        anchor: new google.maps.Point(16, 16)
      };
      
    var marker = new google.maps.Marker({
      position: position,
      map: this.map,
      icon: icon_image
    })
      
    google.maps.event.addListener(marker, 'click', function() {
        infowindow.open(marker.get('map'), marker);
      });
      
    this.mapMarkers.push(marker);
  },
  
  clearMarkers: function(){
    for (var i = 0; i < this.mapMarkers.length; i++) {
      this.mapMarkers[i].setMap(null);
    }
  },
  
  initialize: function(){
    this.map = 
      new google.maps.Map(this.el, this.mapOptions);
    
    this.mapMarkers = [];

    this.collection.forEach(this.addMarker.bind(this));
    this.listenTo(this.collection, "add", this.addMarker);
    this.listenTo(this.collection, "remove", this.setMarkers);
    
    google.maps.event.addListener(
        this.map, "bounds_changed", this.filterByLocation.bind(this));
    setTimeout(function(){google.maps.event.trigger(this.map, "resize");}.bind(this), 0)
    
  },
  
  filterByLocation: function(){
    var bounds = this.map.getBounds();
    var ne  = bounds.getNorthEast();
    var sw = bounds.getSouthWest();
    SciFairbnb.Collections.filteredListings.filters.location = function(listing){
      var listingLat = listing.get("latitude");
      var listingLng = listing.get("longitude");
      if (listingLat > sw.lat() && listingLat < ne.lat() &&
        listingLng > sw.lng() && listingLng < ne.lng()) {
          var listingTitle = listing.get("title")
            return true;
        } else {
          return false;
        }
    }   
   
    SciFairbnb.Collections.filteredListings.updateFiltered();
  },
  
  attributes: {
    style: "height: 700px"
  },
  
  setMarkers: function(){
    this.clearMarkers();
    var that = this;
    this.collection.forEach(function(listing) {
      that.addMarker(listing);
    });
  },
  
  render: function(){
    return this;
  },
});