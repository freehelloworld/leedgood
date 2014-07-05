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

ActiveRecord::Schema.define(version: 20140702230325) do

  create_table "homelands", force: true do |t|
    t.string   "name"
    t.text     "packagedes"
    t.string   "frontimg"
    t.string   "structimg"
    t.integer  "lot"
    t.string   "address"
    t.decimal  "size"
    t.integer  "bedroom"
    t.integer  "bathroom"
    t.integer  "garage"
    t.decimal  "price"
    t.string   "status"
    t.string   "note1"
    t.string   "note2"
    t.string   "note3"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_id"
  end

  create_table "landdivisions", force: true do |t|
    t.integer  "lot"
    t.string   "address"
    t.decimal  "size"
    t.decimal  "frontage"
    t.decimal  "price"
    t.string   "status"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "name"
    t.text     "description",    limit: 255
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "address"
    t.string   "allotmentplan"
    t.string   "image2"
    t.string   "image3"
    t.boolean  "isonhome"
    t.integer  "projecttype_id"
    t.string   "note1"
    t.string   "note2"
  end

  create_table "projecttypes", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image"
    t.string   "note1"
    t.string   "note2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
