class CreateChems < ActiveRecord::Migration
  def change
    create_table :chems do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
