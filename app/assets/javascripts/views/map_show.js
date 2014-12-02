SciFairbnb.Views.MapShow = Backbone.View.extend({
  mapOptions: {
            center: new google.maps.LatLng(37.7833, -122.4167),
            zoom: 12,
            mapTypeId: google.maps.MapTypeId.TERRAIN,
            panControl: true,
            scaleControl: false,
            streetViewControl: true,
            overviewMapControl: true
          },
    
  addMarker: function(listing){
    var position = new google.maps.LatLng(listing.get("latitude"), listing.get("longitude"));
    var marker = new google.maps.Marker({
      position: position,
      map: this.map
    })
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
    // this.listenTo(this.collection, "add", this.setMarkers);
    this.listenTo(this.collection, "remove", this.setMarkers);
    
    google.maps.event.addListener(
        this.map, "bounds_changed", this.filterByLocation.bind(this));
  },
  
  filterByLocation: function(){
    var bounds = this.map.getBounds();
    var ne  = bounds.getNorthEast();
    var sw = bounds.getSouthWest();
    
    filteredListings = SciFairbnb.Collections.listings.filter(function(listing){
      var listingLat = listing.get("latitude");
      var listingLng = listing.get("longitude");
      if (listingLat > sw.lat() && listingLat < ne.lat() &&
        listingLng > sw.lng() && listingLng < ne.lng()) {
          var listingTitle = listing.get("title")
          console.log(listingTitle + " is within map boundaries")
            return true;
        } else {
          return false;
        }
    });
    
    
    SciFairbnb.Collections.filteredListings.set(filteredListings);
    // this.collection = SciFairbnb.Collections.filteredListings;
    // this.collection.trigger('filter');
  },
  
  attributes: {
    style: "height: 480px"
  },
  
  setMarkers: function(){
    console.log("in setMarkers")
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