class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description
      t.boolean :done
      t.belongs_to :project, index: true

      t.timestamps null: false
    end
    add_foreign_key :tasks, :projects
  end
end
