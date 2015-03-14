class CreateMepembashes < ActiveRecord::Migration
  def change
    create_table :mepembashes do |t|
      t.integer :kod_farmak
      t.integer :code_fyta
      t.integer :diast_pros
      t.string :comments
      t.string :delrec

      t.timestamps null: false
    end
  end
end
