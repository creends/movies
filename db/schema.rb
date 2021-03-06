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

ActiveRecord::Schema.define(version: 20131231165724) do

  create_table "films", force: true do |t|
    t.string   "name"
    t.integer  "size"
    t.text     "path"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "import_at"
    t.datetime "deleted_at"
    t.boolean  "duplicate",  default: false
    t.integer  "torrent_id"
  end

  add_index "films", ["torrent_id"], name: "index_films_on_torrent_id"

  create_table "t_films", force: true do |t|
    t.string   "name"
    t.integer  "size"
    t.integer  "torrent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "duplicate",  default: false
  end

  create_table "torrents", force: true do |t|
    t.string   "name"
    t.text     "path"
    t.text     "comment"
    t.datetime "import_at"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
