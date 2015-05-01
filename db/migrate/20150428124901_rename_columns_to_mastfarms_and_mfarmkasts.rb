class RenameColumnsToMastfarmsAndMfarmkasts < ActiveRecord::Migration
  def up
  	rename_column :mastfarms,:mfarmkast_id,:entypo_id
  	rename_column :mfarmkasts,:counter,:entypo_id

  end

  def down
  	rename_column :mfarmkasts,:entypo_id,:counter
  	rename_column :mastfarms,:entypo_id,:counter
  end
end
