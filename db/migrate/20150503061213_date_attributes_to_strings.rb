class DateAttributesToStrings < ActiveRecord::Migration
  def change
  	remove_column :mfarmakos ,:hmer_egris
  	add_column :mfarmakos,:hmer_egris,:string

  	remove_column :mfarmakos ,:date_notification
  	add_column :mfarmakos,:date_notification,:string

  	remove_column :mfarmakos ,:adate
  	add_column :mfarmakos,:adate,:string

  	remove_column :mfarmakos ,:telos_egri
  	add_column :mfarmakos,:telos_egri,:string

  end
end
