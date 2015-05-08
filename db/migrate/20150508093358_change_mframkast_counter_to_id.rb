class ChangeMframkastCounterToId < ActiveRecord::Migration
  def change
  	drop_table :mfarmkasts
  	 create_table :mfarmkasts,force: :cascade do |t|
      t.integer:counter
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
