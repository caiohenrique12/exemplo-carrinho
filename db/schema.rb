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

ActiveRecord::Schema.define(version: 20160121002827) do

  create_table "order_items", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "qtd"
    t.integer  "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "order_items", ["order_id"], name: "index_order_items_on_order_id"
  add_index "order_items", ["product_id"], name: "index_order_items_on_product_id"

  create_table "orders", force: :cascade do |t|
    t.date     "data_compra"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price"
    t.integer  "qtd"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
