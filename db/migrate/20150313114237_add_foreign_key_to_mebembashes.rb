class AddForeignKeyToMebembashes < ActiveRecord::Migration
  def change
	#	add_foreign_key :mepembashes,:mcrops , column: :code_fyta,primay_key: :code_fyta
  end
end
