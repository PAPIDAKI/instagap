class CreateProductionactiviations < ActiveRecord::Migration
  def change
    create_table :productionactiviations do |t|
      t.integer :activity_id
      t.integer :production_id

      t.timestamps null: false
    end
  end
end
