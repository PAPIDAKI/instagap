class CreateEntypos < ActiveRecord::Migration
  def change
    create_table :entypos ,id:false do |t|
      t.primary_key :counter
      t.string :methodos
      t.string :stadio_season
      t.integer :num_min
      t.integer :num_max
      t.integer :dias_min
      t.integer :dias_max
      t.integer :kgm_min
      t.integer :kgm_max
      t.integer :lt_min
      t.integer :lt_max
      t.integer :kgmekt_min
      t.integer :kgmekt_max
      t.string :comments

      t.timestamps null: false
    end
  end
end
