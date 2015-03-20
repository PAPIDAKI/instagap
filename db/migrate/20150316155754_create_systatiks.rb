class CreateSystatiks < ActiveRecord::Migration
  def up
	  drop_table :systatiks


	  create_table :systatiks ,id:false do |t|
      t.string :kodikos,null: false
      t.string :onomadron
      t.string :arxiko
      t.string :aposyrsh
      t.integer :cipac
      t.string :dr_cod_kat
      t.binary :old_new
      t.string :fao
      t.string :cas_number
      t.integer :code_xhmik

      t.timestamps null: false
    end

		add_index :systatiks,:kodikos, unique: true
  end
end
