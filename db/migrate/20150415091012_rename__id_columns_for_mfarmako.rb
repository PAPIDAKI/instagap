class RenameIdColumnsForMfarmako < ActiveRecord::Migration
  def up
  	#rename_column :mfcs,:farmako_id,:mframako_id
  	# rename_column :farm_dros,:farmako_id,:mframako_id
  	#rename_column :mepembashes,:farmako_id,:mframako_id
  	# rename_column :mfarmkasts,:farmako_id,:mfarmako_id
  end

  def down
  	# rename_column :mfarmkasts,:farmako_id,:mfarmako_id
  	# rename_column :mepembashes,:farmako_id,:mframako_id
  	# rename_column :farm_dros,:farmako_id,:mframako_id
  	# rename_column :mfcs,:farmako_id,:mframako_id
  end

  
end
