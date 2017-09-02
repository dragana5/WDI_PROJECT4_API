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

ActiveRecord::Schema.define(version: 20170902140942) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "swims", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "startDate"
    t.datetime "endDate"
    t.bigint "venue_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "created_by"
    t.index ["user_id"], name: "index_swims_on_user_id"
    t.index ["venue_id"], name: "index_swims_on_venue_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "password"
    t.string "password_confirmation"
  end

  create_table "venues", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.text "image"
    t.string "venue_rules"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "swims", "users"
  add_foreign_key "swims", "venues"
end
