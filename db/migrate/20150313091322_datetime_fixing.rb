class DatetimeFixing < ActiveRecord::Migration
  def change
	  change_column :farmakos,:hmer_egris,:date

  end
end
