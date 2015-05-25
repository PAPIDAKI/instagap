class Add < ActiveRecord::Migration
  def change
  	add_column :solutions,:mfc_id,:integer
  	add_index :solutions,:mfc_id
  end
end
