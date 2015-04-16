class RenameColumnsInMastfarms < ActiveRecord::Migration
  def up
  	rename_column :mastfarms,:counter,:mfarmkast_id
  	rename_column :mastfarms,:code_asten,:masthenium_id
  	rename_column :masthenia,:masthenium_id,:code_asten
  	rename_column :mastfarms,:kod_doshs,:mdosh_id
  end

  def down
  	rename_column :mastfarms,:mfarmkast_id,:counter
  	rename_column :mastfarms,:masthenium_id,:code_asten
  	rename_column :masthenia,:code_asten,:masthenium_id
  	rename_column :mastfarms,:mdosh_id,:kod_doshs
  end
end
