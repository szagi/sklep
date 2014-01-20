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

ActiveRecord::Schema.define(version: 20140120112829) do

  create_table "customers", force: true do |t|
    t.string   "login"
    t.string   "name"
    t.string   "surname"
    t.string   "gender"
    t.date     "birth_date"
    t.string   "email"
    t.string   "password"
    t.string   "country"
    t.string   "city"
    t.string   "street"
    t.string   "zip_code"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

  add_index "customers", ["email"], name: "index_customers_on_email", unique: true
  add_index "customers", ["login"], name: "index_customers_on_login", unique: true

  create_table "order_elements", force: true do |t|
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.string   "status"
    t.date     "order_date"
    t.date     "shipped_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.float    "price"
    t.integer  "amount_available"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
