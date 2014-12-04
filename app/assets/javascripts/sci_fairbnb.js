window.SciFairbnb = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function(){
    new SciFairbnb.Routers.Router({
      $rootEl: $('#main')
    });
    Backbone.history.start();
  }
}; 

$(SciFairbnb.initialize);