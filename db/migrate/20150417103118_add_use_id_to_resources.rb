class AddUseIdToResources < ActiveRecord::Migration
  def up
  	add_column :groups,:user_id,:integer
  	add_column :registrations,:user_id,:integer
  end

  def down
  	remove_column :groups,:user_id
  	remove_column :registrations,:user_id
  end
end
