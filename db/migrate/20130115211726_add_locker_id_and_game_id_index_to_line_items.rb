class AddLockerIdAndGameIdIndexToLineItems < ActiveRecord::Migration
  def change
  	add_index :line_items, :locker_id
  	add_index :line_items, :game_id
  end
end
