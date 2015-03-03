class CreateIrrigations < ActiveRecord::Migration
  def change
    create_table :irrigations do |t|
      t.date :date
      t.integer :duration
      t.decimal :qunatity
      t.integer :persons
      t.string :operator
      t.string :note

      t.timestamps null: false
    end
  end
end
