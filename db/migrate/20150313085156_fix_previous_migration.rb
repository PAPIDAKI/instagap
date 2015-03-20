class FixPreviousMigration < ActiveRecord::Migration
  def change
		change_column :farmakos,:hmer_egris,:datetime
  end
end
