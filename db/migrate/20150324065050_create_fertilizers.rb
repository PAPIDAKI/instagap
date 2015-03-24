class CreateFertilizers < ActiveRecord::Migration
  def change
    create_table :fertilizers do |t|
      t.string :brand
      t.string :type
      t.string :content
      t.decimal :quantiy
      t.string :unit

      t.timestamps null: false
    end
  end
end
