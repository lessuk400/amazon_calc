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

ActiveRecord::Schema.define(version: 2018_10_16_151150) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "calculations", force: :cascade do |t|
    t.string "email"
    t.string "marketplace"
    t.float "selling_fee_per_unit"
    t.float "shipping_cost_per_unit"
    t.float "vat_duty_cost_per_unit"
    t.float "ppc_cost_per_unit"
    t.float "total_net_cash_profit"
    t.float "fba_fee_per_unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "token"
    t.datetime "expired_at"
  end

  create_table "categories", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "market_places", force: :cascade do |t|
    t.string "name"
    t.float "vat"
    t.bigint "market_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "alpha3"
    t.index ["market_id"], name: "index_market_places_on_market_id"
  end

  create_table "markets", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "packages", force: :cascade do |t|
    t.float "width"
    t.float "height"
    t.float "length"
    t.float "packaging_weight"
    t.integer "tier", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "referral_fees", force: :cascade do |t|
    t.float "fee"
    t.float "min_fee"
    t.bigint "market_place_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_referral_fees_on_category_id"
    t.index ["market_place_id"], name: "index_referral_fees_on_market_place_id"
  end

  create_table "shipping_rates", force: :cascade do |t|
    t.integer "weight"
    t.float "fee"
    t.bigint "package_id"
    t.bigint "market_place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["market_place_id"], name: "index_shipping_rates_on_market_place_id"
    t.index ["package_id"], name: "index_shipping_rates_on_package_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", null: false
    t.string "encrypted_password", limit: 128, null: false
    t.string "confirmation_token", limit: 128
    t.string "remember_token", limit: 128, null: false
    t.index ["email"], name: "index_users_on_email"
    t.index ["remember_token"], name: "index_users_on_remember_token"
  end

  add_foreign_key "market_places", "markets"
  add_foreign_key "referral_fees", "categories"
  add_foreign_key "referral_fees", "market_places"
  add_foreign_key "shipping_rates", "market_places"
  add_foreign_key "shipping_rates", "packages"
end
