class CreateFarmakos < ActiveRecord::Migration
  def change
    create_table :farmakos do |t|
      t.date :hmer_egris
      t.integer :kod_farmak
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
      t.date :date_update
      t.string :kode
      t.integer :num_protok
      t.string :num_total
      t.string :tegris
      t.string :type_egris
      t.string :type_egris
      t.integer :kat_number_egris
      t.integer :fys_katast
      t.integer :fys_kat
      t.integer :group
      t.string :morfhskeya
      t.decimal :biothitike
      t.string :aposyrsi
      t.string :kod
      t.boolean :food
      t.string :stoxos
      t.string :tropos_efar
      t.string :met_klima
      t.integer :paraskeyas
      t.integer :antiprosop
      t.integer :configontact_market
      t.integer :contact_point
      t.string :code_toxik
      t.string :rcode
      t.date :telos_egri

      t.timestamps null: false
    end
  end
end
