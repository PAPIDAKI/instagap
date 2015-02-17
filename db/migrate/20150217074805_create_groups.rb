class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :email

      t.timestamps null: false
    end
  end
end
