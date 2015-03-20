class AddForeingKeyToMemembashes < ActiveRecord::Migration
  def up
		#add_foreign_key :mepembashes,:mcrops,column: :code_fyta,primary_key: :code_fyta
  end

	def down

	end
end
