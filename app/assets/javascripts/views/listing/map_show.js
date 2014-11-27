SciFairbnb.Views.MapShow = Backbone.View.extend({
  template: JST['google_map/show'],
  
  render: function(){
    var content = this.template;
    this.$el.html(content)
    return this;
  },
});