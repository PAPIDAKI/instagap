class DropMcropsTable < ActiveRecord::Migration
  def up
		drop_table :mcrops,force: :cascade

  end

	def down

	end
end
