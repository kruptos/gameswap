class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.text :description
      t.integer :giantbomb_id
      t.string :thumbnail_url
      t.string :platform

      t.timestamps
    end

    #add_index :giantbomb_id
  end
end
