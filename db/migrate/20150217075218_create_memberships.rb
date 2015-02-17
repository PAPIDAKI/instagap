class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.references :group, index: true
      t.references :grower, index: true

      t.timestamps null: false
    end
    add_foreign_key :memberships, :groups
    add_foreign_key :memberships, :growers
  end
end
