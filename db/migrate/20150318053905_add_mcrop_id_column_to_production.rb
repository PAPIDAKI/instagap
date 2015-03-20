class AddMcropIdColumnToProduction < ActiveRecord::Migration
  def up
		add_column :productions,:mcrop_id,:integer
		add_index :productions ,:mcrop_id
		#remove_column :productions ,:mcrop_id

  end

	def end

	end
end
