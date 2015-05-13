class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.string :name
      t.integer:quantity
      t.string :unit
      t.integer :phi
      t.references :activity, index: true

      t.timestamps null: false
    end
    add_foreign_key :solutions, :activities
  end
end
