class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :email
      t.string :role
      t.references :group, index: true

      t.timestamps null: false
    end
    add_foreign_key :registrations, :groups
  end
end
