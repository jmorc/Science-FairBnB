SciFairbnb.Views.ListingItem = Backbone.View.extend({
  template: JST['listing/item'],
  
  // events: {
  //   'click': "handleListItemClick"
  // },
  
  render: function(){
    var content = this.template({ listing: this.model })
    this.$el.html(content)
    return this;
  },
  
  handleListItemClick: function(event){
    var showUrl = '#listings/' + this.model.id;
    Backbone.history.navigate(showUrl, {trigger: true});
  }
  
});