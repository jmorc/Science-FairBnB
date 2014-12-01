SciFairbnb.Views.Search = Backbone.CompositeView.extend({
  template: JST['search'],
  
  initialize: function(){
    this.listenTo(this.collection, "sync", this.render);
    this.collection.each(this.addListing.bind(this));
    this.addMapView();
    this.addFilterView();
  },
  
  addMapView: function(){
    var mapShow = new SciFairbnb.Views.MapShow({
      collection: this.collection
    });
    this.addSubview(".google-map", mapShow); 
  },
  
  addFilterView: function(){
    var filterShow = new SciFairbnb.Views.FilterShow();
    this.addSubview(".filter-tools", filterShow); 
  },
  
  addListing: function(listing){
    var listingShow = new SciFairbnb.Views.ListingShow({ model: listing })
    this.addSubview(".listings", listingShow);
  },
  
  removeListing: function(listing){
    var subview = _.find(this.subviews(".listings"),
      function(subview) {
        return subview.model === listing;
      });
    
    this.removeSubview(".listings", subview);
  },
  
  filterByMaxPrice: function(price){
    // filtering function --> begins with collection of all listings and assigns to this.collection only those lists which meet filtering criteria
  },
  
  filterByMapRegion: function(input_from_maps) {
    // filter
  },
  
  filterByAttribute: function(options) {},
  
  render: function(){
    var view = this;
    var searchContent = this.template()
    // var listingContent = this.template({ listings: this.collection });
    // debugger
    // var mapContent = this.mapView.render().$el;
    // this.$el.prepend(mapContent);
    this.$el.html(searchContent);
    
    this.collection.each(this.addListing.bind(this));
    // this.addMapView();
    this.attachSubviews();
    
    return this;
  },
  
});