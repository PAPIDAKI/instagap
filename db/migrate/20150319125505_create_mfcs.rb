class CreateMfcs < ActiveRecord::Migration
  def change
    create_table :mfcs do |t|
      t.integer :farmako_id
      t.integer :mcrop_id
      t.string :crops
      t.string :edr_cod_kat
      t.string :eidos
      t.string :emporikhon
      t.string :gbonoma
      t.date :aposyrsh
      t.date :telos_egri
      t.binary :un_delete
      t.date :un_date
      t.binary :soil

      t.timestamps null: false
    end
  end
end
