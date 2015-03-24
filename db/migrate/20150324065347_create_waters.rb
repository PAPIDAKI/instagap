class CreateWaters < ActiveRecord::Migration
  def change
    create_table :waters do |t|
      t.decimal :quantity
      t.string :unit

      t.timestamps null: false
    end
  end
end
