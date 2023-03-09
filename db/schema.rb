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

ActiveRecord::Schema[7.0].define(version: 2023_03_09_140917) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "addresses", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "street"
    t.string "state"
    t.string "city"
    t.string "zip_code"
    t.string "country"
    t.string "neighborhood"
    t.string "exterior_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_addresses_on_user_id"
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
    t.bigint "car_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_car_reviews_on_car_id"
    t.index ["user_id"], name: "index_car_reviews_on_user_id"
  end

  create_table "cars", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "car_approved"
    t.string "niv"
    t.string "make"
    t.string "model"
    t.string "year"
    t.string "engine"
    t.string "transmission"
    t.string "gas_type"
    t.integer "doors"
    t.integer "seats"
    t.float "price"
    t.boolean "unlimited_distance"
    t.float "extra_km_price"
    t.string "description"
    t.integer "max_distance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_cars_on_user_id"
  end

  create_table "emergency_contacts", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "phone_number"
    t.string "relationship"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_emergency_contacts_on_user_id"
  end

  create_table "location_addresses", force: :cascade do |t|
    t.string "street"
    t.string "city"
    t.string "zip_code"
    t.string "state"
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

  create_table "rental_drivers", force: :cascade do |t|
    t.bigint "rental_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rental_id"], name: "index_rental_drivers_on_rental_id"
    t.index ["user_id"], name: "index_rental_drivers_on_user_id"
  end

  create_table "rentals", force: :cascade do |t|
    t.bigint "car_id", null: false
    t.bigint "user_id", null: false
    t.date "start_date"
    t.date "end_date"
    t.boolean "host_accepted"
    t.bigint "pick_up_locations_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_rentals_on_car_id"
    t.index ["pick_up_locations_id"], name: "index_rentals_on_pick_up_locations_id"
    t.index ["user_id"], name: "index_rentals_on_user_id"
  end

  create_table "user_reviews", force: :cascade do |t|
    t.integer "stars"
    t.string "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "first_name", default: "", null: false
    t.string "last_names", default: "", null: false
    t.string "phone_number"
    t.date "date_of_birth"
    t.string "gender"
    t.integer "driver_verified", default: 0, null: false
    t.integer "host_verified", default: 0, null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "addresses", "users"
  add_foreign_key "car_pick_up_locations", "cars"
  add_foreign_key "car_pick_up_locations", "pick_up_locations"
  add_foreign_key "car_reviews", "cars"
  add_foreign_key "car_reviews", "users"
  add_foreign_key "cars", "users"
  add_foreign_key "emergency_contacts", "users"
  add_foreign_key "pick_up_locations", "location_addresses"
  add_foreign_key "rental_drivers", "rentals"
  add_foreign_key "rental_drivers", "users"
  add_foreign_key "rentals", "cars"
  add_foreign_key "rentals", "pick_up_locations", column: "pick_up_locations_id"
  add_foreign_key "rentals", "users"
  add_foreign_key "user_reviews", "users"
end
