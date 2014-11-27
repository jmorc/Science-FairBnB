SciFairbnb.Views.FilterShow = Backbone.View.extend({
  template: JST['filter/show'],
  
  render: function(){
    var content = this.template;
    this.$el.html(content)
    return this;
  },
});