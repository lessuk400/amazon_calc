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

ActiveRecord::Schema.define(version: 2018_09_27_055011) do

  create_table "categories", force: :cascade do |t|
    t.string "title"
    t.integer "market_place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["market_place_id"], name: "index_categories_on_market_place_id"
  end

  create_table "dimensions", force: :cascade do |t|
    t.float "height"
    t.float "width"
    t.float "length"
    t.string "name"
    t.integer "market_place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "packaging_weight"
    t.index ["market_place_id"], name: "index_dimensions_on_market_place_id"
  end

  create_table "fees", force: :cascade do |t|
    t.float "weight"
    t.float "price"
    t.integer "market_place_id"
    t.integer "dimension_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dimension_id"], name: "index_fees_on_dimension_id"
    t.index ["market_place_id"], name: "index_fees_on_market_place_id"
  end

  create_table "market_places", force: :cascade do |t|
    t.string "name"
    t.integer "market_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "vat"
    t.index ["market_id"], name: "index_market_places_on_market_id"
  end

  create_table "markets", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "referral_fees", force: :cascade do |t|
    t.float "fee"
    t.integer "market_place_id"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "min_fee"
    t.index ["category_id"], name: "index_referral_fees_on_category_id"
    t.index ["market_place_id"], name: "index_referral_fees_on_market_place_id"
  end

end
