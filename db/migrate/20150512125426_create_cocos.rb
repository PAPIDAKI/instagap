class CreateCocos < ActiveRecord::Migration
  def change
    create_table :cocos do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
