class CreateMfarmkasts < ActiveRecord::Migration
  def change
    create_table :mfarmkasts,id:false do |t|
      t.primary_key :counter
      t.integer :kod_farmak
      t.integer :code_fyta
      t.string :tropoxrono
      t.boolean :delrec
      t.boolean :general
      t.boolean :un_delete
      t.date :un_date

      t.timestamps null: false
    end
  end
end
