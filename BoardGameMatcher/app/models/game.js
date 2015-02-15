import DS from 'ember-data';

export default DS.Model.extend({
  title: DS.attr("string"),
  year: DS.attr("integer"),
  description: DS.attr("string"),
  image: DS.attr("string"),
  bggID: DS.attr("string"),
  player_age: DS.attr("integer"),
  min_players: DS.attr("integer"),
  max_players: DS.attr("integer"),
  playing_time: DS.attr("integer"),
  playing_time_max: DS.attr("integer"),
  playing_time_min: DS.attr("integer"),
  owned: DS.attr("boolean"),
  created_at: DS.attr("date"),
  updated_at: DS.attr("date")
});
