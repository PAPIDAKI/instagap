class AddMkatigiriIdToMfcs < ActiveRecord::Migration
  def up
  	#add_column :mfcs,:mkatigori_id,:string
  	rename_column :mfcs,:edr_cod_kat,:mkatigori_id
  end

  def down 
  	rename_column :mfcs,:mkatigori_id,:edr_cod_kat
  end
end
