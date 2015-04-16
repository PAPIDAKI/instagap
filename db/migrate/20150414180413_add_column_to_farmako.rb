class AddColumnToFarmako < ActiveRecord::Migration
  def up
  	add_column :farmakos,:adate,:date
  end

  def down
  	remove_colum :farmakos,:adate

  end
end
