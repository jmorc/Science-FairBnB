SciFairbnb.Views.ListingItem = Backbone.View.extend({
  template: JST['listing/item'],
    
  render: function(){
    var content = this.template({ listing: this.model })
    this.$el.html(content)
    return this;
  },
  
  handleListItemClick: function(event){
    var showUrl = '#listings/' + this.model.id;
    Backbone.history.navigate(showUrl, {trigger: true});
  },
  
  events: {
    "mouseenter": "handleMouseenter",
    "mouseleave": "handleMouseleave",
  },
  
  handleMouseenter: function(){
    var listing = this.model;
    var marker = listing.marker;
    marker.setIcon("assets/favicon-blue-32.png");
  },
  
  handleMouseleave: function(){
    var listing = this.model;
    var marker = listing.marker;
    marker.setIcon("assets/map_icon.png");
  }
  
});