class CreateMkatigoris < ActiveRecord::Migration
  def change
    create_table :mkatigoris do |t|
      t.integer :code_kathg
      t.integer :kod_kathg
      t.integer :kode_kathg
      t.integer :gkode_kathg
      t.string :dr_cod_kat
      t.string :edr_cod_kat
      t.integer :code
      t.boolean :ovisible
      t.boolean :biocides
      t.string :kathgoria
      t.string :kathgories
      t.string :gkathg
      t.string :gkathgoria
      t.string :hkathgoria
      t.string :ghkathgoria

      t.timestamps null: false
    end
  end
end
