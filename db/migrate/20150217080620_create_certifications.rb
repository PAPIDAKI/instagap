class CreateCertifications < ActiveRecord::Migration
  def change
    create_table :certifications do |t|
      t.references :standard, index: true
      t.references :production, index: true

      t.timestamps null: false
    end
    add_foreign_key :certifications, :standards
    add_foreign_key :certifications, :productions
  end
end
