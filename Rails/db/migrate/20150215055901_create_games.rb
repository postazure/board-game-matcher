class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.integer :year
      t.text :description
      t.string :image

      t.string :bggID

      t.integer :player_age

      t.integer :min_players
      t.integer :max_players

      t.integer :playing_time
      t.integer :playing_time_max
      t.integer :playing_time_min


      t.boolean :owned, default: false

      t.timestamps
    end
  end
end
