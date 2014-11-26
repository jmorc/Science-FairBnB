SciFairbnb.Collections.Listings = Backbone.Collection.extend({
  url: 'api/listings',
  model: SciFairbnb.Models.Listing,
})