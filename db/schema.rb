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

ActiveRecord::Schema.define(version: 20160513200420) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "tokens", id: false, force: :cascade do |t|
    t.string   "id"
    t.string   "name"
    t.string   "bin"
    t.string   "exp_month"
    t.string   "exp_year"
    t.string   "brand"
    t.string   "last4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "cvc"
  end

  add_index "tokens", ["id"], name: "index_tokens_on_id", using: :btree

end
