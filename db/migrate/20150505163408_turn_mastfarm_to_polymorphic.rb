class TurnMastfarmToPolymorphic < ActiveRecord::Migration
  def up
  	add_column :mastfarms,:counterable_type,:string
  	# rename_column :mastfarms,:counter,:counterable_id
  end
   def down
   	rename_column :mastfarms,:counterable_id,:counter
   	remove_column :mastfarms,:counterable_type

   end
end
