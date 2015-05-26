class TablesTidyingUp < ActiveRecord::Migration
  def change
  	drop_table :doshes
  	drop_table :farmakos
  end
end