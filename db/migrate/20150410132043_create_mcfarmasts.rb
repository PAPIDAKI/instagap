class CreateMcfarmasts < ActiveRecord::Migration
  def change
    create_table :mcfarmasts do |t|
      t.integer :kod_farmak
      t.integer :counter
      t.integer :code_fyta
      t.string :tropoxrono
      t.string :code_asten
      t.string :fbcode
      t.string :dosh_farm
      t.integer :kod_doshs

      t.timestamps null: false
    end
  end
end
