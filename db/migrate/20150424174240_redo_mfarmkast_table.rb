class RedoMfarmkastTable < ActiveRecord::Migration
  def up
  	drop_table :mfarmkasts

  	create_table :mfarmkasts do |t|
      t.integer :counter
      t.integer :kod_farmak
      t.integer :code_fyta
      t.string :tropoxrono
      t.boolean :delrec
      t.boolean :general
      t.boolean :un_delete
      t.date :un_date

      t.timestamps null: false
      end

      rename_column :mfarmkasts,:kod_farmak,:mfarmako_id
      rename_column :mfarmkasts,:code_fyta,:mcrop_id
  end

  def down
  	  	drop_table :mfarmkasts

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
