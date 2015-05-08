class AddColumnMfarmkzizIdToMastfarms < ActiveRecord::Migration
  def change
  	add_column	:mastfarms,:mfarmkziz_id,:integer
  	add_index :mastfarms,:mfarmkziz_id
  	
  end
end
