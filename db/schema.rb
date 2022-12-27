# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_12_26_074724) do
  create_table "admins", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "name"
    t.string "admin_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email"
  end

  create_table "buyer_locations", force: :cascade do |t|
    t.integer "location_id", null: false
    t.integer "buyer_id", null: false
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["buyer_id"], name: "index_buyer_locations_on_buyer_id"
    t.index ["location_id"], name: "index_buyer_locations_on_location_id"
  end

  create_table "buyers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone_number"
    t.text "working_days"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leads", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone_number"
    t.string "city"
    t.string "state_code"
    t.string "street_address"
    t.integer "zip_code"
    t.boolean "sold"
    t.integer "service_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_id"], name: "index_leads_on_service_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "city"
    t.string "country"
    t.string "state_code", limit: 10
    t.string "state_name"
    t.integer "zip_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["zip_code"], name: "index_locations_on_zip_code"
  end

  create_table "service_buyers", force: :cascade do |t|
    t.integer "service_id", null: false
    t.integer "buyer_id", null: false
    t.float "payout"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["buyer_id"], name: "index_service_buyers_on_buyer_id"
    t.index ["service_id"], name: "index_service_buyers_on_service_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "buyer_locations", "buyers"
  add_foreign_key "buyer_locations", "locations"
  add_foreign_key "leads", "services"
  add_foreign_key "service_buyers", "buyers"
  add_foreign_key "service_buyers", "services"
end
