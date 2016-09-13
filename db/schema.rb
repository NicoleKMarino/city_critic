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

ActiveRecord::Schema.define(version: 20160912205603) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "states_id"
    t.index ["states_id"], name: "index_cities_on_states_id", using: :btree
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "stars"
    t.string   "pros"
    t.string   "cons"
    t.boolean  "current_resident"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "users_id"
    t.integer  "cities_id"
    t.index ["cities_id"], name: "index_comments_on_cities_id", using: :btree
    t.index ["users_id"], name: "index_comments_on_users_id", using: :btree
  end

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.string   "image_url"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.text     "password_digest"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
