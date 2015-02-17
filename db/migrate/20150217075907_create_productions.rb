class CreateProductions < ActiveRecord::Migration
  def change
   create_table :productions do |t|
     t.references :pmu, index: true
     t.references :produce, index: true
     t.string :variety
     t.integer :plantation_year
     t.integer :number_of_trees
     t.integer :expected_quantitiy
     t.date :ehd
#
     t.timestamps null: false
   end
   add_foreign_key :productions, :pmus
   add_foreign_key :productions, :produces
  end
end
