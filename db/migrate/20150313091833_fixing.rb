class Fixing < ActiveRecord::Migration
  def change
		rename_column :farmakos,:biothitike,:bohthitike
		rename_column :farmakos,:aposyrsi,:aposyrsh
		rename_column :farmakos,:tropos_efar,:tropo_efar
		rename_column :farmakos,:configontact_market,:contact_market
  end
end
