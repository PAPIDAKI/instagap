# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150526084647) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.date     "date"
    t.string   "type"
    t.text     "note"
    t.string   "operator"
    t.integer  "persons"
    t.string   "approved_by"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "registration_id"
  end

  add_index "activities", ["id", "type"], name: "index_activities_on_id_and_type", using: :btree
  add_index "activities", ["registration_id"], name: "index_activities_on_registration_id", using: :btree

  create_table "certifications", force: :cascade do |t|
    t.integer  "standard_id"
    t.integer  "production_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "certifications", ["production_id"], name: "index_certifications_on_production_id", using: :btree
  add_index "certifications", ["standard_id"], name: "index_certifications_on_standard_id", using: :btree

  create_table "entypos", primary_key: "counter", force: :cascade do |t|
    t.string   "methodos"
    t.string   "stadio_season"
    t.integer  "num_min"
    t.integer  "num_max"
    t.integer  "dias_min"
    t.integer  "dias_max"
    t.integer  "kgm_min"
    t.integer  "kgm_max"
    t.integer  "lt_min"
    t.integer  "lt_max"
    t.integer  "kgmekt_min"
    t.integer  "kgmekt_max"
    t.string   "comments"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "farm_dros", force: :cascade do |t|
    t.integer  "mfarmako_id"
    t.string   "systatik_id"
    t.string   "kod_morfh"
    t.decimal  "synthesh"
    t.decimal  "katharotht"
    t.binary   "kodikos_kath"
    t.binary   "delrec"
    t.binary   "fprint"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "farm_dros", ["mfarmako_id"], name: "index_farm_dros_on_mfarmako_id", using: :btree
  add_index "farm_dros", ["systatik_id"], name: "index_farm_dros_on_systatik_id", using: :btree

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "avatar"
    t.integer  "user_id"
  end

  add_index "groups", ["user_id"], name: "index_groups_on_user_id", using: :btree

  create_table "mastfarms", force: :cascade do |t|
    t.integer  "counterable_id"
    t.string   "masthenium_id"
    t.string   "fbcode"
    t.string   "dosh_farm"
    t.integer  "mdosh_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "counterable_type"
    t.integer  "mfarmkziz_id"
  end

  add_index "mastfarms", ["masthenium_id"], name: "index_mastfarms_on_masthenium_id", using: :btree
  add_index "mastfarms", ["mdosh_id"], name: "index_mastfarms_on_mdosh_id", using: :btree
  add_index "mastfarms", ["mfarmkziz_id"], name: "index_mastfarms_on_mfarmkziz_id", using: :btree

  create_table "masthenia", id: false, force: :cascade do |t|
    t.string   "code_asten", null: false
    t.string   "astenia"
    t.string   "nastenia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mcrops", primary_key: "code_fyta", force: :cascade do |t|
    t.string   "kathg"
    t.string   "eidos"
    t.string   "gonoma"
    t.integer  "general"
    t.string   "code"
    t.string   "klartext"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mdoshes", primary_key: "kod_doshs", force: :cascade do |t|
    t.string   "dosh"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "memberships", force: :cascade do |t|
    t.integer  "group_id"
    t.integer  "grower_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "memberships", ["group_id"], name: "index_memberships_on_group_id", using: :btree
  add_index "memberships", ["grower_id"], name: "index_memberships_on_grower_id", using: :btree

  create_table "mepembashes", force: :cascade do |t|
    t.integer  "mfarmako_id"
    t.integer  "mcrop_id"
    t.integer  "diast_pros"
    t.string   "comments"
    t.string   "delrec"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "mepembashes", ["mcrop_id"], name: "index_mepembashes_on_mcrop_id", using: :btree
  add_index "mepembashes", ["mfarmako_id", "mcrop_id"], name: "index_mepembashes_on_mfarmako_id_and_mcrop_id", using: :btree
  add_index "mepembashes", ["mfarmako_id"], name: "index_mepembashes_on_mfarmako_id", using: :btree

  create_table "mfarmakos", primary_key: "kod_farmak", force: :cascade do |t|
    t.string   "gbonoma"
    t.string   "emporikhon"
    t.boolean  "fprint"
    t.boolean  "common"
    t.boolean  "enimerosi"
    t.boolean  "amateur_use"
    t.boolean  "tag"
    t.boolean  "mixture"
    t.string   "edr_cod_kat"
    t.string   "date_update"
    t.string   "kode"
    t.integer  "num_protok"
    t.integer  "num_protok_total"
    t.string   "tegris"
    t.string   "type_egris"
    t.string   "kat_number_egris"
    t.integer  "fys_katast"
    t.integer  "fys_kat"
    t.boolean  "group"
    t.string   "morfhskeya"
    t.decimal  "bohthitike"
    t.string   "aposyrsh"
    t.string   "kod"
    t.boolean  "food"
    t.string   "stoxos"
    t.text     "tropo_efar"
    t.text     "met_klima"
    t.integer  "paraskeyas"
    t.integer  "antiprosop"
    t.integer  "contact_market"
    t.integer  "contact_point"
    t.string   "code_toxik"
    t.string   "rcode"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "hmer_egris"
    t.string   "date_notification"
    t.string   "adate"
    t.string   "telos_egri"
  end

  create_table "mfarmkasts", force: :cascade do |t|
    t.integer  "counter"
    t.integer  "mfarmako_id"
    t.integer  "mcrop_id"
    t.string   "tropoxrono"
    t.boolean  "delrec"
    t.boolean  "general"
    t.boolean  "un_delete"
    t.date     "un_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "mfarmkasts", ["mcrop_id"], name: "index_mfarmkasts_on_mcrop_id", using: :btree
  add_index "mfarmkasts", ["mfarmako_id"], name: "index_mfarmkasts_on_mfarmako_id", using: :btree

  create_table "mfarmkzizs", primary_key: "counter", force: :cascade do |t|
    t.integer  "mfarmako_id"
    t.integer  "mcrop_id"
    t.string   "tropoxrono"
    t.boolean  "delrec"
    t.boolean  "general"
    t.boolean  "un_delete"
    t.string   "un_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "mfarmkzizs", ["mcrop_id"], name: "index_mfarmkzizs_on_mcrop_id", using: :btree
  add_index "mfarmkzizs", ["mfarmako_id"], name: "index_mfarmkzizs_on_mfarmako_id", using: :btree

  create_table "mfcs", force: :cascade do |t|
    t.integer  "mfarmako_id"
    t.integer  "mcrop_id"
    t.string   "crops"
    t.string   "mkatigori_id"
    t.string   "eidos"
    t.string   "emporikhon"
    t.string   "gbonoma"
    t.date     "aposyrsh"
    t.date     "telos_egri"
    t.binary   "un_delete"
    t.date     "un_date"
    t.binary   "soil"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "mfcs", ["mcrop_id", "mfarmako_id"], name: "index_mfcs_on_mcrop_id_and_mfarmako_id", using: :btree
  add_index "mfcs", ["mcrop_id"], name: "index_mfcs_on_mcrop_id", using: :btree
  add_index "mfcs", ["mfarmako_id"], name: "index_mfcs_on_mfarmako_id", using: :btree
  add_index "mfcs", ["mkatigori_id"], name: "index_mfcs_on_mkatigori_id", using: :btree

  create_table "mkatigoris", id: false, force: :cascade do |t|
    t.integer  "code_kathg"
    t.integer  "kod_kathg"
    t.integer  "kode_kathg"
    t.integer  "gkode_kathg"
    t.string   "dr_cod_kat"
    t.string   "edr_cod_kat", null: false
    t.integer  "code"
    t.boolean  "ovisible"
    t.boolean  "biocides"
    t.string   "kathgoria"
    t.string   "kathgories"
    t.string   "gkathg"
    t.string   "gkathgoria"
    t.string   "hkathgoria"
    t.string   "ghkathgoria"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "pmus", force: :cascade do |t|
    t.string   "address"
    t.string   "location"
    t.integer  "grower_id"
    t.string   "facilities"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "registration_id"
  end

  add_index "pmus", ["grower_id"], name: "index_pmus_on_grower_id", using: :btree
  add_index "pmus", ["registration_id"], name: "index_pmus_on_registration_id", using: :btree

  create_table "produces", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productionactiviations", force: :cascade do |t|
    t.integer  "activity_id"
    t.integer  "production_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "productionactiviations", ["activity_id"], name: "index_productionactiviations_on_activity_id", using: :btree
  add_index "productionactiviations", ["production_id"], name: "index_productionactiviations_on_production_id", using: :btree

  create_table "productions", force: :cascade do |t|
    t.integer  "pmu_id"
    t.string   "variety"
    t.integer  "plantation_year"
    t.integer  "number_of_trees"
    t.integer  "expected_quantitiy"
    t.date     "ehd"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "mcrop_id"
  end

  add_index "productions", ["mcrop_id"], name: "index_productions_on_mcrop_id", using: :btree
  add_index "productions", ["pmu_id"], name: "index_productions_on_pmu_id", using: :btree

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "registrations", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "role"
    t.integer  "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "registrations", ["group_id"], name: "index_registrations_on_group_id", using: :btree
  add_index "registrations", ["user_id"], name: "index_registrations_on_user_id", using: :btree

  create_table "solutions", force: :cascade do |t|
    t.string   "name"
    t.integer  "quantity"
    t.string   "unit"
    t.integer  "phi"
    t.integer  "activity_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "mfc_id"
  end

  add_index "solutions", ["activity_id"], name: "index_solutions_on_activity_id", using: :btree
  add_index "solutions", ["mfc_id"], name: "index_solutions_on_mfc_id", using: :btree

  create_table "standards", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "systatiks", id: false, force: :cascade do |t|
    t.string   "kodikos",    null: false
    t.string   "onomadron"
    t.string   "arxiko"
    t.string   "aposyrsh"
    t.integer  "cipac"
    t.string   "dr_cod_kat"
    t.binary   "old_new"
    t.string   "fao"
    t.string   "cas_number"
    t.integer  "code_xhmik"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "systatiks", ["kodikos"], name: "index_systatiks_on_kodikos", unique: true, using: :btree

  create_table "tasks", force: :cascade do |t|
    t.string   "description"
    t.boolean  "done"
    t.integer  "project_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "tasks", ["project_id"], name: "index_tasks_on_project_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "role",                   default: 0
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "certifications", "productions"
  add_foreign_key "certifications", "standards"
  add_foreign_key "memberships", "groups"
  add_foreign_key "productions", "pmus"
  add_foreign_key "registrations", "groups"
  add_foreign_key "solutions", "activities"
  add_foreign_key "tasks", "projects"
end
