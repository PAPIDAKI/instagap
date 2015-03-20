class DropFarmakosTable < ActiveRecord::Migration
  def up
		drop_table :farmakos,force: :cascade
  end

	def down

	end
end
