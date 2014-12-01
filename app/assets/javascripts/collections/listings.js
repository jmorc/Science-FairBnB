SciFairbnb.Collections.Listings = Backbone.Collection.extend({
  url: 'api/listings',
  model: SciFairbnb.Models.Listing,
  
  getOrFetch: function(id){
    var listing = this.get(id);
    if (!listing) {
      var listing = new SciFairbnb.Models.Listing({ id: id }) 
    }
    listing.fetch();
    return listing;
  }
})

SciFairbnb.Collections.listings = new SciFairbnb.Collections.Listings();
