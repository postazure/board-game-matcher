import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    
    console.log (this.store.find('game'))
    return this.store.find('game');
  }
});
