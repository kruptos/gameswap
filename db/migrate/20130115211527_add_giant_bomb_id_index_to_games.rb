class AddGiantBombIdIndexToGames < ActiveRecord::Migration
  def change
  	add_index :games, :giantbomb_id
  end
end
