SciFairbnb.Views.ListingsFilter = Backbone.CompositeView.extend({
  template: JST['listing/filter'],
  
  initialize: function(){
    this.listenTo(this.collection, "sync", this.render)
    
    
  },
  
  addListing: function(){},
  
  removeListing: function(){},
  
  render: function(){
    var content = this.template({ listings: this.collection })
    this.$el.html(content)
    return this;
  },
  
});