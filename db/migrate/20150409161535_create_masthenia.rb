class CreateMasthenia < ActiveRecord::Migration
  def change
    create_table :masthenia,id:false do |t|
      t.string :code_asten ,null:false
      t.string :astenia
      t.string :nastenia

      t.timestamps null: false
    end
  end
end
