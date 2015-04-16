class RenameColumnsInMfarmast < ActiveRecord::Migration
  def up
  	#rename_column :mfarmkasts,:kod_farmak,:farmako_id
  	rename_column :mfarmkasts,:code_fyta,:mcrop_id
  	#rename_column :mfarmkasts,:mcrop_id,:code_fyta

  end
  def down
  end
end
