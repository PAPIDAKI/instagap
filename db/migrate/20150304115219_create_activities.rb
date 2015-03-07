class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.date :date
      t.string :type
      t.text :note
      t.string :operator
      t.integer :persons
      t.string :approved_by
      t.integer :production_id

      t.timestamps null: false
    end
  end
end
