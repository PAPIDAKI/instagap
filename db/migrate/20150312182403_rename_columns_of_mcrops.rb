class RenameColumnsOfMcrops < ActiveRecord::Migration
  def change
		rename_column :mcrops,:kathh,:kathg
		rename_column :mcrops,:genenral,:general
		rename_column :mcrops,:klartex,:klartext
		rename_column :farmakos,:num_protok,:num_protok_total
		rename_column :farmakos ,:num_protok_total,:num_protok
		rename_column :farmakos,:num_total,:num_protok_total
		change_column :farmakos ,:hmer_egris,:datetime


  end
end
