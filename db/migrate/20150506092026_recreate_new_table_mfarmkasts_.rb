class RecreateNewTableMfarmkasts < ActiveRecord::Migration
  def change
  	drop_table :mcfarmasts

  	create_table :mfarmkasts, id:false,force: :cascade do |t|
    t.primary_key  "counter"
    t.integer  "farmako_id"
    t.integer  "mcrop_id"
    t.string   "tropoxrono"
    t.string   "code_asten"
    t.string   "fbcode"
    t.string   "dosh_farm"
    t.integer  "mdosh_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
	end

  end
end
