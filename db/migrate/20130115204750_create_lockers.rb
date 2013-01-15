class CreateLockers < ActiveRecord::Migration
  def change
    create_table :lockers do |t|
      t.integer :user_id

      t.timestamps
    end

    #add_index :user_id
  end
end
