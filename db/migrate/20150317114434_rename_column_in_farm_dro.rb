class RenameColumnInFarmDro < ActiveRecord::Migration
  def up
   rename_column :farm_dros ,:kof_morfh,:kod_morfh
  end


	def end

	end
end
