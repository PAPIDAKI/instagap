class CreateDoshes < ActiveRecord::Migration
  def change
    create_table :doshes,id:false do |t|
      t.primary_key :kod_doshs
      t.string :dosh

      t.timestamps null: false
    end
  end
end
