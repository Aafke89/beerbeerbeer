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

ActiveRecord::Schema.define(version: 20160727144606) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beers", force: :cascade do |t|
    t.string   "brewery"
    t.string   "name"
    t.string   "style"
    t.string   "volume"
    t.string   "alcohol"
    t.string   "keg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "brewers", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "zipcode"
    t.string   "city"
    t.text     "open",                    array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float    "latitude"
    t.float    "longitude"
  end

end
