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

ActiveRecord::Schema.define(version: 20140911042128) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "rockles", force: true do |t|
    t.string   "name",                   null: false
    t.string   "species",                null: false
    t.integer  "user_id",                null: false
    t.integer  "level",      default: 1
    t.integer  "exp",        default: 0
    t.integer  "max_hp"
    t.integer  "hp_points",  default: 0
    t.integer  "atk_points", default: 0
    t.integer  "def_points", default: 0
    t.integer  "spd_points", default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rockles", ["name"], name: "index_rockles_on_name", unique: true, using: :btree
  add_index "rockles", ["user_id"], name: "index_rockles_on_user_id", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "username",                      null: false
    t.string   "password_digest",               null: false
    t.string   "session_token",                 null: false
    t.integer  "gold",            default: 100
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["session_token"], name: "index_users_on_session_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
