class AddProductionIdToFertilizations < ActiveRecord::Migration
  def change
		add_column :fertilizations,:production_id,:integer
		add_index  :fertilizations,:production_id
  end
end
