class CreatePmus < ActiveRecord::Migration
  def change
    create_table :pmus do |t|
      t.string :address
      t.string :location
      t.references :grower, index: true
      t.string :facilities

      t.timestamps null: false
    end
    add_foreign_key :pmus, :growers
  end
end
