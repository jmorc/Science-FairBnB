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
  },
  
  filters: {
    price: function () { return true; },
    location: function () { return true; }  
  },
  
  updateFiltered: function () {
    var _filteredListings = SciFairbnb.Collections.listings.clone();
    
    for (var filterName in this.filters) {
      _filteredListings = _filteredListings.filter(this.filters[filterName]);
    }
    
    this.set(_filteredListings);
  }
})

SciFairbnb.Collections.listings = new SciFairbnb.Collections.Listings();
SciFairbnb.Collections.filteredListings = new SciFairbnb.Collections.Listings();