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

ActiveRecord::Schema.define(version: 20160607064623) do

  create_table "cities", force: :cascade do |t|
    t.string   "long"
    t.string   "lat"
    t.string   "radius"
    t.integer  "take"
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "lat"
    t.string   "lng"
    t.string   "keyword"
    t.string   "radius"
  end

  create_table "my_cities", force: :cascade do |t|
    t.string   "keyword"
    t.string   "lat"
    t.string   "lng"
    t.string   "radius"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "uid",              null: false
    t.string   "provider",         null: false
    t.string   "name"
    t.string   "email"
    t.string   "photo"
    t.string   "oauth_token"
    t.string   "oauth_expires_at"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
