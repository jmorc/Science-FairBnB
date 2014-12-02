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

ActiveRecord::Schema.define(version: 20141202195346) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "listings", force: true do |t|
    t.integer "user_id",       null: false
    t.string  "title",         null: false
    t.string  "address"
    t.integer "num_beds"
    t.integer "num_guests"
    t.integer "num_bedrooms"
    t.float   "latitude"
    t.float   "longitude"
    t.integer "price"
    t.string  "image_url"
    t.string  "mass_spec"
    t.string  "centrifuge"
    t.string  "bunsen_burner"
    t.string  "evil"
  end

  create_table "users", force: true do |t|
    t.string "password_digest"
    t.string "email"
    t.string "session_token"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["session_token"], name: "index_users_on_session_token", using: :btree

end
