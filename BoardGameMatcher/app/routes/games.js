import Ember from 'ember';

export default Ember.Route.extend({
  model: function() { 
    this.store.find('game')
    return this.store.filter('game', function  (game) {
      return game.get("title").length > 1;
    }) 
    // return this.store.find('game');
  }
});
