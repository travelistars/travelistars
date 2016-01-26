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

ActiveRecord::Schema.define(version: 20160118155001) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "biz_hours", force: :cascade do |t|
    t.integer  "entry_id"
    t.integer  "day_of_week"
    t.datetime "open"
    t.datetime "close"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "biz_hours", ["entry_id"], name: "index_biz_hours_on_entry_id", using: :btree

  create_table "closed_days", force: :cascade do |t|
    t.integer  "entry_id"
    t.integer  "closed_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "closed_days", ["entry_id"], name: "index_closed_days_on_entry_id", using: :btree

  create_table "entries", force: :cascade do |t|
    t.string   "native_name",    null: false
    t.string   "alpha_name",     null: false
    t.string   "native_address"
    t.string   "alpha_address"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "entries", ["location_id"], name: "index_entries_on_location_id", using: :btree

  create_table "entry_genres", force: :cascade do |t|
    t.integer  "entry_id"
    t.integer  "genre_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "entry_genres", ["entry_id"], name: "index_entry_genres_on_entry_id", using: :btree
  add_index "entry_genres", ["genre_id"], name: "index_entry_genres_on_genre_id", using: :btree

  create_table "entry_links", force: :cascade do |t|
    t.integer  "entry_id"
    t.integer  "link_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "entry_links", ["entry_id"], name: "index_entry_links_on_entry_id", using: :btree
  add_index "entry_links", ["link_id"], name: "index_entry_links_on_link_id", using: :btree

  create_table "genres", force: :cascade do |t|
    t.string   "name"
    t.string   "icon_path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "links", force: :cascade do |t|
    t.string "url"
  end

  create_table "locations", force: :cascade do |t|
    t.float    "latitude",   null: false
    t.float    "longitude",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phone_types", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phones", force: :cascade do |t|
    t.integer  "entry_id"
    t.integer  "phone_type_id"
    t.integer  "country_code"
    t.string   "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "phones", ["entry_id"], name: "index_phones_on_entry_id", using: :btree
  add_index "phones", ["phone_type_id"], name: "index_phones_on_phone_type_id", using: :btree

  create_table "price_types", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prices", force: :cascade do |t|
    t.integer  "entry_id"
    t.integer  "price_type_id"
    t.float    "from"
    t.float    "to"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "prices", ["entry_id"], name: "index_prices_on_entry_id", using: :btree
  add_index "prices", ["price_type_id"], name: "index_prices_on_price_type_id", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.integer  "review_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["review_id"], name: "index_reviews_on_review_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",             null: false
    t.string   "language"
    t.text     "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
