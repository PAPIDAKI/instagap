class CreatePps < ActiveRecord::Migration
  def change
    create_table :pps do |t|
      t.date :date
      t.string :trade_name
      t.string :active_ingridient
      t.string :reason
      t.decimal :amount
      t.string :application_method
      t.string :tech_responsible
      t.string :operator
      t.string :persons
      t.string :note
      t.integer :production_id

      t.timestamps null: false
    end
  end
end
