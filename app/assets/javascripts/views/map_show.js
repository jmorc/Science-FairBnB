SciFairbnb.Views.MapShow = Backbone.View.extend({

  // initialize google maps and attach to $el
  mapOptions: {
            center: new google.maps.LatLng(37.7833, -122.4167),
            zoom: 12,
            mapTypeId: google.maps.MapTypeId.NORMAL,
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
          },
  
  initialize: function(){
  
this.map = 
      new google.maps.Map(this.el,this.mapOptions);
      
      this.collection.forEach(this.addMarker.bind(this))
      
      this.listenTo(this.collection, "add", this.addMarker)
        
  },
  
  attributes: {
    style: "height: 100px"
  },
  
  render: function(){
    // var content = this.template;
   // this.$el.html(content)
    return this;
  },
});