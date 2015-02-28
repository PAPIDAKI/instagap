class CreateFertilizations < ActiveRecord::Migration
  def change
    create_table :fertilizations do |t|
      t.date :date
      t.string :name
      t.string :type
      t.string :concentration
      t.decimal :amount
      t.string :application_method
      t.string :machinery
      t.string :approved_by
      t.string :operator
      t.string :note

      t.timestamps null: false
    end
  end
end
