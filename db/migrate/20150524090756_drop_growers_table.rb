class DropGrowersTable < ActiveRecord::Migration
  def change
  	drop_table :growers,force: :cascade
  end
end
