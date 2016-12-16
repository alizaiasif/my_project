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

ActiveRecord::Schema.define(version: 20161215184901) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bills", force: :cascade do |t|
    t.integer  "Tratment_Amount"
    t.integer  "room_amount"
    t.integer  "total"
    t.integer  "patient_id"
    t.integer  "tratment_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "bills", ["patient_id"], name: "index_bills_on_patient_id", using: :btree
  add_index "bills", ["tratment_id"], name: "index_bills_on_tratment_id", using: :btree

  create_table "departments", force: :cascade do |t|
    t.string   "Name"
    t.string   "Location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string   "name"
    t.text     "Address"
    t.string   "cnic"
    t.string   "contact"
    t.integer  "department_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "doctors", ["department_id"], name: "index_doctors_on_department_id", using: :btree

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.string   "cnic"
    t.string   "contact"
    t.text     "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservattions", force: :cascade do |t|
    t.date     "date"
    t.integer  "patient_id"
    t.integer  "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reservattions", ["patient_id"], name: "index_reservattions_on_patient_id", using: :btree
  add_index "reservattions", ["room_id"], name: "index_reservattions_on_room_id", using: :btree

  create_table "room_types", force: :cascade do |t|
    t.integer  "Price"
    t.string   "room_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string   "location"
    t.integer  "Room_No"
    t.integer  "room_type_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "rooms", ["room_type_id"], name: "index_rooms_on_room_type_id", using: :btree

  create_table "staffs", force: :cascade do |t|
    t.string   "name"
    t.string   "resignation"
    t.integer  "room_type_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "staffs", ["room_type_id"], name: "index_staffs_on_room_type_id", using: :btree

  create_table "tratments", force: :cascade do |t|
    t.integer  "doctor_id"
    t.integer  "patient_id"
    t.integer  "Amount"
    t.date     "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tratments", ["doctor_id"], name: "index_tratments_on_doctor_id", using: :btree
  add_index "tratments", ["patient_id"], name: "index_tratments_on_patient_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "bills", "patients"
  add_foreign_key "bills", "tratments"
  add_foreign_key "doctors", "departments"
  add_foreign_key "reservattions", "patients"
  add_foreign_key "reservattions", "rooms"
  add_foreign_key "rooms", "room_types"
  add_foreign_key "staffs", "room_types"
  add_foreign_key "tratments", "doctors"
  add_foreign_key "tratments", "patients"
end
