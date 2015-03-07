class AddRegistrationIdToActivities < ActiveRecord::Migration
  def change
		add_column :activities,:registration_id,:integer
		add_index :activities,:registration_id
  end
end
