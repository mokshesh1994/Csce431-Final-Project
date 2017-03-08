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

ActiveRecord::Schema.define(version: 20170305214809) do

  create_table "committees", force: :cascade do |t|
    t.string   "name",        limit: 50
    t.text     "description"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "divisions", force: :cascade do |t|
    t.string   "name",        limit: 30, null: false
    t.text     "description"
    t.binary   "image"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name",          limit: 40, null: false
    t.string   "link_to_event"
    t.binary   "image"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "members", force: :cascade do |t|
    t.integer  "position_id"
    t.integer  "division_id"
    t.string   "name",          limit: 50, null: false
    t.string   "email",         limit: 70, null: false
    t.string   "password",      limit: 50, null: false
    t.string   "major",         limit: 50, null: false
    t.integer  "grad_year",     limit: 50, null: false
    t.integer  "member_since",  limit: 50, null: false
    t.string   "hometown",      limit: 50, null: false
    t.text     "pro_interests"
    t.binary   "picture"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string   "name",       limit: 50, null: false
    t.string   "pos_type",   limit: 50, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "sponsors", force: :cascade do |t|
    t.string   "name",            limit: 40, null: false
    t.text     "description"
    t.string   "spn_type",        limit: 40, null: false
    t.binary   "logo"
    t.string   "link_to_sec"
    t.string   "link_to_sponsor"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

end
