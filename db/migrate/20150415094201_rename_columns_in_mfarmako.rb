class RenameColumnsInMfarmako < ActiveRecord::Migration
  def up
  #rename_column :farm_dros,:mframako_id,:mfarmako_id
  #rename_column :mepembashes,:mframako_id,:mfarmako_id
  rename_column :mfcs,:mframako_id,:mfarmako_id

  end

  def down
  end
end
