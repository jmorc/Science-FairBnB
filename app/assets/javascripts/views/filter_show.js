SciFairbnb.Views.FilterShow = Backbone.View.extend({
  template: JST['filter/show'],
  
  initialize: function(){
    
  },
  
  attachSlider: function(){
    // this.$el.append("<div class='slider'></div>");
    // this.$el.append("")
    this.$('#price-slider').slider(this.sliderOptions);
    this.$('.slider').on('slideStop', this.handleSlider);
  //   this.$('.slider').prepend('<b>$0</b>');
  },
  
  handleSlider: function(event){
    console.log("slideStop Event!")
    debugger
    
    
  },
  
  render: function(){
    var content = this.template;    
    this.$el.html(content)
    this.attachSlider();
    return this;
  },
  
  sliderOptions: {
    min: 0,
    max: 2000,
    handle: 'square',
    orientation: 'horizontal',
    value: [50, 250]
  }
});