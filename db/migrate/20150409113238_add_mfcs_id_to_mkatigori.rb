class AddMfcsIdToMkatigori < ActiveRecord::Migration
  def change
  	add_column :mkatigoris,:mfc_id,:integer,index: true
  end
end
