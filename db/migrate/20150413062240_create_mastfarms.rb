class CreateMastfarms < ActiveRecord::Migration
  def change
    create_table :mastfarms do |t|
      t.integer :counter
      t.string :code_asten
      t.string :fbcode
      t.string :dosh_farm
      t.integer :kod_doshs

      t.timestamps null: false
    end
  end
end
