class RenameMastheniumIdAndMdoshIdToMcfarmasts < ActiveRecord::Migration
  def up
  	rename_column :masthenia,:code_asten,:masthenium_id
  	#rename_column :masthenia,:kod_doshs,:mdosh_id
  end
  def down
  	#rename_column :masthenia,:mdosh_id,:kod_doshs
  	#rename_column :masthenia,:masthenium_id,:code_asten
  end
end
