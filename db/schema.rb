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

ActiveRecord::Schema.define(version: 20150909223944) do

  create_table "pet_breeds", force: :cascade do |t|
    t.string   "name",        limit: 4000
    t.boolean  "published"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "pet_type_id", limit: 4
  end

  add_index "pet_breeds", ["pet_type_id"], name: "index_pet_breeds_on_pet_type_id"

  create_table "pet_types", force: :cascade do |t|
    t.string   "name",       limit: 4000
    t.boolean  "published"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "pets", force: :cascade do |t|
    t.text     "name",         limit: 2147483647
    t.boolean  "published"
    t.datetime "birth_date"
    t.string   "gender",       limit: 4000
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "pet_type_id",  limit: 4
    t.integer  "pet_breed_id", limit: 4
  end

  add_index "pets", ["pet_breed_id"], name: "index_pets_on_pet_breed_id"
  add_index "pets", ["pet_type_id"], name: "index_pets_on_pet_type_id"

  add_foreign_key "pet_breeds", "pet_types"
  add_foreign_key "pets", "pet_breeds"
  add_foreign_key "pets", "pet_types"
end
