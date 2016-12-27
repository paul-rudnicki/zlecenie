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

ActiveRecord::Schema.define(version: 20161227141756) do

  create_table "advertisment_categories", force: :cascade do |t|
    t.integer  "advertisment_id"
    t.integer  "category_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "advertisment_categories", ["advertisment_id"], name: "index_advertisment_categories_on_advertisment_id"
  add_index "advertisment_categories", ["category_id"], name: "index_advertisment_categories_on_category_id"

  create_table "advertisment_geolocations", force: :cascade do |t|
    t.integer  "advertisment_id"
    t.integer  "geolocation_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "advertisment_geolocations", ["advertisment_id"], name: "index_advertisment_geolocations_on_advertisment_id"
  add_index "advertisment_geolocations", ["geolocation_id"], name: "index_advertisment_geolocations_on_geolocation_id"

  create_table "advertisments", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.decimal  "price",      precision: 10, scale: 2
    t.boolean  "status",                              default: false
    t.string   "slug"
    t.integer  "user_id"
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
  end

  add_index "advertisments", ["slug"], name: "index_advertisments_on_slug", unique: true
  add_index "advertisments", ["user_id"], name: "index_advertisments_on_user_id"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "categories", ["slug"], name: "index_categories_on_slug", unique: true

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "geolocations", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "geolocations", ["slug"], name: "index_geolocations_on_slug", unique: true

  create_table "offers", force: :cascade do |t|
    t.text     "content"
    t.decimal  "price",           precision: 10, scale: 2
    t.string   "realization"
    t.boolean  "status"
    t.integer  "user_id"
    t.integer  "advertisment_id"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "offers", ["advertisment_id"], name: "index_offers_on_advertisment_id"
  add_index "offers", ["user_id"], name: "index_offers_on_user_id"

  create_table "settings", force: :cascade do |t|
    t.string   "site_name"
    t.integer  "posts_per_page", default: 10
    t.boolean  "maintenance",    default: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.string   "password_digest"
    t.string   "slug"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "login"
  end

  add_index "users", ["slug"], name: "index_users_on_slug", unique: true

end
