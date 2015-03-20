class AddMcropsTableWithCustomPrimatyKey < ActiveRecord::Migration
  def up
	  create_table :mcrops,id:false do |t|
		  t.primary_key :code_fyta
		  t.string :kathg
		  t.string :eidos
		  t.string :gonoma
		  t.integer :general
		  t.string :code
		  t.string :klartext

		  t.timestamps null: false

	  end
  end

	def down


	end
end
