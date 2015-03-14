class CreateMcrops < ActiveRecord::Migration
  def change
    create_table :mcrops do |t|
      t.integer :code_fyta
      t.string :kathh
      t.string :eidos
      t.string :gonoma
      t.integer :genenral
      t.string :code
      t.string :klartex

      t.timestamps null: false

    end
  end
end
