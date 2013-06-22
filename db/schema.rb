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

ActiveRecord::Schema.define(version: 20130622134332) do

  create_table "items", force: true do |t|
    t.string   "description", null: false
    t.decimal  "price",       null: false
    t.string   "image",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_items", force: true do |t|
    t.integer  "order_id",   null: false
    t.integer  "item_id",    null: false
    t.integer  "quantity"
    t.decimal  "price",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "order_items", ["item_id"], name: "index_order_items_on_item_id", using: :btree
  add_index "order_items", ["order_id", "item_id"], name: "index_order_items_on_order_id_and_item_id", unique: true, using: :btree
  add_index "order_items", ["order_id"], name: "index_order_items_on_order_id", using: :btree

  create_table "orders", force: true do |t|
    t.string   "session_id",               null: false
    t.string   "status",     default: "o", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["session_id"], name: "index_orders_on_session_id", unique: true, using: :btree

  add_foreign_key "order_items", "items", :name => "order_items_item_id_fk"
  add_foreign_key "order_items", "orders", :name => "order_items_order_id_fk"

end
