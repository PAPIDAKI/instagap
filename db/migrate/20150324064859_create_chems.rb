class CreateChems < ActiveRecord::Migration
  def change
    create_table :chems do |t|
      t.string :mfc
      t.decimal :quantity
      t.string :unit

      t.timestamps null: false
    end
  end
end
