SciFairbnb.Views.ListingShow = Backbone.View.extend({
  template: JST['listing/show'],
  
  initialize: function(){
    this.listenTo(this.model, 'sync', this.render);
    this.attachDatePickers()
  },
  
  attachDatePickers: function(){
    this.$('.input-append.date').datepicker({});
  },
  
  render: function(){
    var content = this.template({ listing: this.model })
    this.$el.html(content)
    this.attachDatePickers()
    return this;
  },
  
});