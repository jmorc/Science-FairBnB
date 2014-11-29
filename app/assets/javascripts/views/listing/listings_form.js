SciFairbnb.Views.ListingForm = Backbone.View.extend({
  template: JST['listings/form'],
  
  render: function(){
    var content = this.template();
    this.$el.html(content);
    return this;
  },
  
  
});