class RenameColumnsInMcfarmast < ActiveRecord::Migration
  def up
  	rename_column :mcfarmasts,:kod_farmak,:farmako_id
  	rename_column :mcfarmasts,:code_fyta,:mcrop_id

  end
  def down
  end
end
