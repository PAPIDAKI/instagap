class RemoveProduceIdFromProductionsAddMcropId < ActiveRecord::Migration
  def change
  	remove_column :productions ,:produce_id
  end
end
