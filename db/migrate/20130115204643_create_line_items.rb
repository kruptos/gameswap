class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :locker_id
      t.integer :game_id

      t.timestamps
    end

    #add_index :locker_id, :game_id
  end
end
