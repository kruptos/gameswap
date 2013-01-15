class AddUserIdIndexToLockers < ActiveRecord::Migration
  def change
  	  	add_index :lockers, :user_id
  end
end
