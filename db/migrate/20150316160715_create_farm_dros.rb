class CreateFarmDros < ActiveRecord::Migration
  def change
    create_table :farm_dros do |t|
      t.integer :kod_farmak
      t.string :kodikos
      t.string :kof_morfh
      t.decimal :synthesh
      t.decimal :katharotht
      t.binary :kodikos_kath
      t.binary :delrec
      t.binary :fprint

      t.timestamps null: false
    end
  end
end
