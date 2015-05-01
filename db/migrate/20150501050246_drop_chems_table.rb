class DropChemsTable < ActiveRecord::Migration
  def change
  	drop_table :chems,force: :cascade
  end
end
