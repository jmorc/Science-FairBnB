SciFairbnb.Views.FilterShow = Backbone.View.extend({
  template: JST['filter/show'],
  
  initialize: function(){
    this.initialMinMax = {
      value: [this.sliderOptions.value[0], this.sliderOptions.value[1]]
    }

    this.attachSlider();
    this.listenTo(SciFairbnb.Collections.listings, 
                  'sync', this.filterByPrice.bind(this, this.initialMinMax))
    
  },
  
  events: {
    "change #mental-state-select" : "handleSelect" 
  },
  
  attachSlider: function(){
    this.$('#price-slider').slider();
    this.$('.slider').on('slideStop', this.handleSlider.bind(this));
  
    this.filterByPrice(this.initialMinMax);
  },
  
  handleSlider: function(event){
    this.filterByPrice(event);
  },
  
  handleSelect: function(event){
    this.filterByMentalState(event);
  },
  
  filterByMentalState: function(event){
    var requestedMentalState = event.currentTarget.value;
  
    filteredListings = SciFairbnb.Collections.listings.filters.mentalState = function(listing){
      if (requestedMentalState === "Any") { return true }
      
      return requestedMentalState === listing.get("user").disposition 
    }
    SciFairbnb.Collections.filteredListings.updateFiltered();
  },
  
  filterByPrice: function(event){
    var minPrice = event.value[0];
    var maxPrice = event.value[1];
    
    if (maxPrice < minPrice) {
      var temp = maxPrice;
      maxPrice = minPrice;
      minPrice = maxPrice;
    }
    
    filteredListings = SciFairbnb.Collections.listings.filters.price = function(listing){
      var listingPrice = listing.get('price');
      if (listingPrice >= minPrice && listingPrice <= maxPrice) {
        var listingTitle = listing.get("title");
        return true;
      } else {
        return false;
      }
    }
      
    SciFairbnb.Collections.filteredListings.updateFiltered();
  
  },
  
  render: function(){
    var content = this.template;    
    this.$el.html(content)
    this.attachSlider();
    return this;
  },
  
  sliderOptions: {
    min: 0,
    max: 1000,
    handle: 'square',
    orientation: 'horizontal',
    value: [50, 950]
  }
});