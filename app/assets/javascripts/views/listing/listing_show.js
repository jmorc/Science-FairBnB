SciFairbnb.Views.ListingShow = Backbone.View.extend({
  template: JST['listing/show'],
  
  render: function(){
    var content = this.template({ listing: this.model })
    this.$el.html(content)
    return this;
  },
  
});