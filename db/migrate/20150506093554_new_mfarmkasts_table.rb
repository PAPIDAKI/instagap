class NewMfarmkastsTable < ActiveRecord::Migration
  def change
  
      create_table :mfarmkasts,id:false,force: :cascade do |t|
      t.primary_key :counter
      t.integer :mfarmako_id
      t.integer :mcrop_id
      t.string :tropoxrono
      t.boolean :delrec
      t.boolean :general
      t.boolean :un_delete
      t.date :un_date

      t.timestamps null: false
      end  

  end
end
