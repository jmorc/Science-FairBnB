SciFairbnb.Views.ListingItem = Backbone.View.extend({
  template: JST['listing/item'],
  
  render: function(){
    var content = this.template({ listing: this.model })
    this.$el.html(content)
    return this;
  },
  
});