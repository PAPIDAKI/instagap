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

ActiveRecord::Schema.define(version: 20150217080620) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "certifications", force: :cascade do |t|
    t.integer  "standard_id"
    t.integer  "production_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "certifications", ["production_id"], name: "index_certifications_on_production_id", using: :btree
  add_index "certifications", ["standard_id"], name: "index_certifications_on_standard_id", using: :btree

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "growers", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
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

  create_table "pmus", force: :cascade do |t|
    t.string   "address"
    t.string   "location"
    t.integer  "grower_id"
    t.string   "facilities"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pmus", ["grower_id"], name: "index_pmus_on_grower_id", using: :btree

  create_table "produces", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productions", force: :cascade do |t|
    t.integer  "pmu_id"
    t.integer  "produce_id"
    t.string   "variety"
    t.integer  "plantation_year"
    t.integer  "number_of_trees"
    t.integer  "expected_quantitiy"
    t.date     "ehd"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "productions", ["pmu_id"], name: "index_productions_on_pmu_id", using: :btree
  add_index "productions", ["produce_id"], name: "index_productions_on_produce_id", using: :btree

  create_table "standards", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "certifications", "productions"
  add_foreign_key "certifications", "standards"
  add_foreign_key "memberships", "groups"
  add_foreign_key "memberships", "growers"
  add_foreign_key "pmus", "growers"
  add_foreign_key "productions", "pmus"
  add_foreign_key "productions", "produces"
end
