class RemoveProductionIdColumnFromActivities < ActiveRecord::Migration
  def change
		remove_column :activities,:production_id
		add_index :productionactiviations,:production_id
		add_index :productionactiviations,:activity_id
  end
end
