class CreateMdoshes < ActiveRecord::Migration
  def change
    create_table :mdoshes,id:false do |t|
      t.primary_key :kod_doshs
      t.string :dosh

      t.timestamps null: false
    end
  end
end
