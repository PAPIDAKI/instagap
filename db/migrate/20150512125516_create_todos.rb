class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :description
      t.boolean :done
      t.belongs_to :coco, index: true

      t.timestamps null: false
    end
    add_foreign_key :todos, :cocos
  end
end
