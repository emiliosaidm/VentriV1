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

ActiveRecord::Schema[7.0].define(version: 2023_02_27_041329) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.string "country"
    t.string "neighborhood"
    t.string "exterior_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "all_car_reviews", force: :cascade do |t|
    t.bigint "car_id", null: false
    t.bigint "car_reviews_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_all_car_reviews_on_car_id"
    t.index ["car_reviews_id"], name: "index_all_car_reviews_on_car_reviews_id"
  end

  create_table "all_user_descriptions", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "user_review_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_all_user_descriptions_on_user_id"
    t.index ["user_review_id"], name: "index_all_user_descriptions_on_user_review_id"
  end

  create_table "car_pick_up_locations", force: :cascade do |t|
    t.bigint "car_id", null: false
    t.bigint "pick_up_location_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_car_pick_up_locations_on_car_id"
    t.index ["pick_up_location_id"], name: "index_car_pick_up_locations_on_pick_up_location_id"
  end

  create_table "car_reviews", force: :cascade do |t|
    t.integer "stars"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cars", force: :cascade do |t|
    t.integer "car_approved"
    t.string "niv"
    t.string "make"
    t.string "model"
    t.integer "year"
    t.string "engine"
    t.string "transmission"
    t.string "gas_type"
    t.integer "doors"
    t.integer "seats"
    t.float "price"
    t.boolean "unlimited_distance", default: false
    t.string "extra_km_price", default: "0"
    t.string "description"
    t.float "max_distance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "driver_emergency_contacts", force: :cascade do |t|
    t.bigint "emergency_contact_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["emergency_contact_id"], name: "index_driver_emergency_contacts_on_emergency_contact_id"
    t.index ["user_id"], name: "index_driver_emergency_contacts_on_user_id"
  end

  create_table "emergency_contacts", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "phone_number"
    t.string "relationship"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "location_addresses", force: :cascade do |t|
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.string "country"
    t.string "neighborhood"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pick_up_locations", force: :cascade do |t|
    t.float "price_of_location"
    t.bigint "location_address_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_address_id"], name: "index_pick_up_locations_on_location_address_id"
  end

  create_table "rental_extra_drivers", force: :cascade do |t|
    t.bigint "rental_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rental_id"], name: "index_rental_extra_drivers_on_rental_id"
    t.index ["user_id"], name: "index_rental_extra_drivers_on_user_id"
  end

  create_table "rental_pick_up_locations", force: :cascade do |t|
    t.bigint "rental_id", null: false
    t.bigint "pick_up_location_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pick_up_location_id"], name: "index_rental_pick_up_locations_on_pick_up_location_id"
    t.index ["rental_id"], name: "index_rental_pick_up_locations_on_rental_id"
  end

  create_table "rentals", force: :cascade do |t|
    t.bigint "car_id", null: false
    t.date "start_date"
    t.date "end_date"
    t.boolean "host_accepted", default: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_rentals_on_car_id"
    t.index ["user_id"], name: "index_rentals_on_user_id"
  end

  create_table "user_addresses", force: :cascade do |t|
    t.bigint "address_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_user_addresses_on_address_id"
    t.index ["user_id"], name: "index_user_addresses_on_user_id"
  end

  create_table "user_cars", force: :cascade do |t|
    t.bigint "car_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_user_cars_on_car_id"
    t.index ["user_id"], name: "index_user_cars_on_user_id"
  end

  create_table "user_reviews", force: :cascade do |t|
    t.integer "stars"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "last_name"
    t.string "phone_number", default: ""
    t.date "date_of_birth"
    t.string "gender", default: ""
    t.string "driver_verified", default: "0"
    t.string "host_verified", default: "0"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "all_car_reviews", "car_reviews", column: "car_reviews_id"
  add_foreign_key "all_car_reviews", "cars"
  add_foreign_key "all_user_descriptions", "user_reviews"
  add_foreign_key "all_user_descriptions", "users"
  add_foreign_key "car_pick_up_locations", "cars"
  add_foreign_key "car_pick_up_locations", "pick_up_locations"
  add_foreign_key "driver_emergency_contacts", "emergency_contacts"
  add_foreign_key "driver_emergency_contacts", "users"
  add_foreign_key "pick_up_locations", "location_addresses"
  add_foreign_key "rental_extra_drivers", "rentals"
  add_foreign_key "rental_extra_drivers", "users"
  add_foreign_key "rental_pick_up_locations", "pick_up_locations"
  add_foreign_key "rental_pick_up_locations", "rentals"
  add_foreign_key "rentals", "cars"
  add_foreign_key "rentals", "users"
  add_foreign_key "user_addresses", "addresses"
  add_foreign_key "user_addresses", "users"
  add_foreign_key "user_cars", "cars"
  add_foreign_key "user_cars", "users"
end
