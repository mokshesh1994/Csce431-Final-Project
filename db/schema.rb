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

ActiveRecord::Schema.define(version: 20170502010835) do

  create_table "committees", force: :cascade do |t|
    t.string   "name",        limit: 50
    t.text     "description"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "image"
  end

  create_table "divisions", force: :cascade do |t|
    t.string   "name",        limit: 30, null: false
    t.text     "description"
    t.string   "image"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name",               limit: 40, null: false
    t.string   "link_to_event"
    t.string   "image"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "members", force: :cascade do |t|
    t.integer  "position_id"
    t.integer  "division_id"
    t.string   "name",               limit: 50, null: false
    t.string   "email",              limit: 70, null: false
    t.string   "major",              limit: 50, null: false
    t.integer  "grad_year",          limit: 50, null: false
    t.integer  "member_since",       limit: 50, null: false
    t.string   "hometown",           limit: 50, null: false
    t.text     "pro_interests"
    t.string   "picture"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "password_digest"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "parameters", force: :cascade do |t|
    t.string   "main_image_1"
    t.string   "main_image_1_title"
    t.string   "main_image_1_subtitle"
    t.string   "main_image_2"
    t.string   "main_image_2_title"
    t.string   "main_image_2_subtitle"
    t.string   "main_image_3"
    t.string   "main_image_3_title"
    t.string   "main_image_3_subtitle"
    t.string   "main_image_4"
    t.string   "main_image_4_title"
    t.string   "main_image_4_subtitle"
    t.string   "main_image_5"
    t.string   "main_image_5_title"
    t.string   "main_image_5_subtitle"
    t.string   "main_image_6"
    t.string   "main_image_6_title"
    t.string   "main_image_6_subtitle"
    t.string   "about_title"
    t.text     "about_description"
    t.string   "committees_title"
    t.text     "committees_description"
    t.string   "sponsors_title"
    t.text     "sponsors_description"
    t.string   "events_title"
    t.text     "events_description"
    t.string   "exboard_title"
    t.text     "exboard_description"
    t.string   "excouncil_title"
    t.text     "excouncil_description"
    t.string   "login_title"
    t.string   "members_title"
    t.text     "members_description"
    t.string   "members_link"
    t.string   "members_footer"
    t.string   "students_title"
    t.text     "students_description"
    t.string   "students_link"
    t.string   "students_footer"
    t.string   "companies_title"
    t.text     "companies_description"
    t.string   "companies_link"
    t.string   "companies_footer"
    t.string   "contactus_title"
    t.string   "contactus_header"
    t.string   "contactus_address"
    t.string   "contactus_phone"
    t.string   "contactus_url"
    t.string   "calendar_title"
    t.text     "calendar_description"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string   "name",               limit: 50, null: false
    t.string   "pos_type",           limit: 50, null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "major"
  end

  create_table "sponsors", force: :cascade do |t|
    t.string   "name",               limit: 40, null: false
    t.text     "description"
    t.string   "spn_type",           limit: 40, null: false
    t.string   "logo"
    t.string   "link_to_sec"
    t.string   "link_to_sponsor"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

end
