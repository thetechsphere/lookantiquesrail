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

ActiveRecord::Schema.define(version: 20151222163024) do

  create_table "buyantiques", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "email",       limit: 255
    t.string   "phonenumber", limit: 255
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.decimal  "askingprice",               precision: 10
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stocks", force: :cascade do |t|
    t.string   "category",    limit: 255
    t.string   "subcategory", limit: 255
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.decimal  "price",                     precision: 10
    t.string   "url",         limit: 255
    t.string   "imageurl",    limit: 255
    t.boolean  "locked"
    t.integer  "quanity",     limit: 4
    t.integer  "itemid",      limit: 8
    t.string   "endtime",     limit: 255
    t.integer  "endtimesec",  limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
