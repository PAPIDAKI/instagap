class CreateQuants < ActiveRecord::Migration
  def change
    create_table :quants do |t|
      t.decimal :amount
      t.string :unit
      t.references :chem, index: true
      t.references :activity, index: true

      t.timestamps null: false
    end
    add_foreign_key :quants, :chems
    add_foreign_key :quants, :activities
  end
end
