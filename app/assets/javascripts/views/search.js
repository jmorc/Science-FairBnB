SciFairbnb.Views.Search = Backbone.CompositeView.extend({
  template: JST['search'],
  
  initialize: function(){
    // this.listenTo(this.collection, "sync", this.render);
    this.listenTo(this.collection, "add", this.addListing);
    this.listenTo(this.collection, "remove", this.removeListing);
    // this.listenTo(this.collection, "reset", this.filterCollection);
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
  
  filterCollection: function(){
    this.subviews('.listings').forEach(function(subview){
      subview.remove();
    });
    this.render();
  },
  
  removeListing: function(listing){
    var subview = _.find(this.subviews(".listings"),
      function(subview) {
        return subview.model === listing;
      });
    
    this.removeSubview(".listings", subview);
  },
  
  render: function(){
    console.log("rendering search view")
    var view = this;
    var searchContent = this.template()
    this.$el.html(searchContent);
     
    
    this.attachSubviews();
    
    return this;
  },
  
});