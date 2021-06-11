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

ActiveRecord::Schema.define(version: 2019_07_24_160237) do

  create_table "appointments", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time_expected"
    t.datetime "end_time"
    t.boolean "cancelled"
    t.text "cancelled_reason"
    t.string "appointment_type"
    t.integer "patient_id"
    t.integer "patient_dismissal_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_dismissal_id"], name: "index_appointments_on_patient_dismissal_id"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "patient_dismissals", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patient_encounters", force: :cascade do |t|
    t.string "encounter_primary_physician"
    t.string "encounter_disposition"
    t.string "body_temperature"
    t.string "blood_pressure"
    t.string "random_blood_sugar"
    t.string "pulse"
    t.integer "appointment_id"
    t.integer "patient_id"
    t.integer "service_type_id"
    t.integer "service_location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appointment_id"], name: "index_patient_encounters_on_appointment_id"
    t.index ["patient_id"], name: "index_patient_encounters_on_patient_id"
    t.index ["service_location_id"], name: "index_patient_encounters_on_service_location_id"
    t.index ["service_type_id"], name: "index_patient_encounters_on_service_type_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.date "date_of_birth"
    t.string "gender"
    t.string "race"
    t.string "ethnicity"
    t.string "address"
    t.string "telephone_number"
    t.string "previous_names"
    t.string "national_ID"
    t.string "NHIS_ID"
    t.date "date_of_first_registration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_locations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_types", force: :cascade do |t|
    t.string "name"
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
