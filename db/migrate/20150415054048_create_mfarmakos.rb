class CreateMfarmakos < ActiveRecord::Migration
  def change
    create_table :mfarmakos,id: false do |t|
      t.date :hmer_egris
      t.primary_key :kod_farmak
      t.string :gbonoma
      t.string :emporikhon
      t.boolean :fprint
      t.boolean :common
      t.boolean :enimerosi
      t.boolean :amateur_use
      t.boolean :tag
      t.boolean :mixture
      t.string :edr_cod_kat
      t.date :date_notification
      t.string :date_update
      t.string :kode
      t.integer :num_protok
      t.integer :num_protok_total
      t.string :tegris
      t.string :type_egris
      t.string :kat_number_egris
      t.integer :fys_katast
      t.integer :fys_kat
      t.date :adate
      t.boolean :group
      t.string :morfhskeya
      t.decimal :bohthitike
      t.string :aposyrsh
      t.string :kod
      t.boolean :food
      t.string :stoxos
      t.text :tropo_efar
      t.text :met_klima
      t.integer :paraskeyas
      t.integer :antiprosop
      t.integer :contact_market
      t.integer :contact_point
      t.string :code_toxik
      t.string :rcode
      t.date :telos_egri

      t.timestamps null: false
    end
  end
end
