class RenameColumnsToFarmakDros < ActiveRecord::Migration
  def up
		#rename_column :farm_dros,:kodikos,:kodikos_id
		#rename_column :farm_dros,:kod_farmak,:kod_farmak_id
		#rename_column :farm_dros ,:kodikos_id,:systatik_id
		rename_column :farm_dros ,:kod_farmak_id,:farmako_id

  end

	def down

	end
end
