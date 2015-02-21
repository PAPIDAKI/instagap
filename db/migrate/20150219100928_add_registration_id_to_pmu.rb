class AddRegistrationIdToPmu < ActiveRecord::Migration
  def change
		add_column :pmus,:registration_id,:integer
		add_index  :pmus ,:registration_id
  end
end
