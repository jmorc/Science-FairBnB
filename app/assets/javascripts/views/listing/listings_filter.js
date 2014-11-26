SciFairbnb.Views.ListingsFilter = Backbone.CompositeView.extend({
  template: JST['listing/filter'],
  
  initialize: function(){
    this.listenTo(this.collection, "sync", this.render);
    this.collection.each(this.addListing.bind(this));
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
    var content = this.template({ listings: this.collection })
    this.$el.html(content)
    this.collection.each(this.addListing.bind(this));
    this.attachSubviews();
    
    return this;
  },
  
});