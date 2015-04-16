class RenameKodDoshsToMdoshId < ActiveRecord::Migration
  def up
  	rename_column :mcfarmasts,:kod_doshs,:mdosh_id
  end

  def down
  end
end
