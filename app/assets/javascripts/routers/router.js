SciFairbnb.Routers.Router = Backbone.Router.extend({
  initialize: function(options){
    this.$rootEl = options.$rootEl;
  },
  
  routes: {
    '': 'search',
    'listings/new': 'new',
    'listings/index' : 'index',
    'listings/:id': 'show',
    'listings/:id/edit': 'edit' 
  },

  edit: function (id) {
    var listing = SciFairbnb.Collections.listings.getOrFetch(id);
    
    var view = new SciFairbnb.Views.ListingForm({ 
      model: listing
    });
    this._swapView(view);
  },

  index: function () {
    SciFairbnb.Collections.listings.fetch();
    var view = new SciFairbnb.Views.ListingsIndex({ 
      collection: SciFairbnb.Collections.listings 
    });
    this._swapView(view);
  },

  new: function () {
    var listing = new SciFairbnb.Models.Listing();
    listing.set('title', ''); // this is wrong
    listing.set('body', '');  // this is wrong
    
    var view = new SciFairbnb.Views.ListingForm({ 
      model: listing
    });
    this._swapView(view);
  },

  show: function (id) {
    var listing = SciFairbnb.Collections.listings.getOrFetch(id);
    var view = new SciFairbnb.Views.ListingShow({ 
      model: post 
    });
    this._swapView(view);
    
  },

  search: function() {
    SciFairbnb.Collections.listings.fetch();
    var searchView = new SciFairbnb.Views.Search({
      collection: SciFairbnb.Collections.listings
    }); 
    
    this._swapView(searchView);
  },
  
  _swapView: function (view) {
    this.currentView && this.currentView.remove();
    this.currentView = view;
    this.$rootEl.html(view.render().$el);
  }
});
  
