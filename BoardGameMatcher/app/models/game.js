import DS from 'ember-data';

export default DS.Model.extend({
  title: DS.attr("string"),
  year: DS.attr("number"),
  description: DS.attr("string"),
  image: DS.attr("string"),
  bggID: DS.attr("string"),
  player_age: DS.attr("number"),
  min_players: DS.attr("number"),
  max_players: DS.attr("number"),
  playing_time: DS.attr("number"),
  playing_time_max: DS.attr("number"),
  playing_time_min: DS.attr("number"),
  owned: DS.attr("boolean"),
  created_at: DS.attr("date"),
  updated_at: DS.attr("date")
});
