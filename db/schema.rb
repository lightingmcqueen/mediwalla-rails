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

ActiveRecord::Schema.define(version: 20151114160831) do

  create_table "accreditations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "clinic_accreditations", force: :cascade do |t|
    t.integer  "clinic_id"
    t.integer  "accreditation_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "clinic_admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "clinic_admins", ["email"], name: "index_clinic_admins_on_email", unique: true
  add_index "clinic_admins", ["reset_password_token"], name: "index_clinic_admins_on_reset_password_token", unique: true

  create_table "clinic_images", force: :cascade do |t|
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "clinic_services", force: :cascade do |t|
    t.integer  "clinic_id"
    t.integer  "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clinic_staffs", force: :cascade do |t|
    t.integer  "clinic_id"
    t.string   "name"
    t.string   "description"
    t.string   "speciality"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "clinics", force: :cascade do |t|
    t.integer  "clinic_admin_id"
    t.string   "name"
    t.string   "description"
    t.string   "services"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "city"
    t.integer  "country_id"
    t.string   "zipcode_string"
    t.string   "coordinator"
    t.string   "ratings"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "homes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hospitals", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "procedure_categories", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "procedure_subcategories", force: :cascade do |t|
    t.integer  "procedure_category_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "procedures", force: :cascade do |t|
    t.integer  "clinic_id"
    t.integer  "procedure_category_id"
    t.integer  "procedure_subcategory_id"
    t.string   "name"
    t.string   "overview"
    t.string   "procedure_before"
    t.string   "procedure_after"
    t.string   "price"
    t.string   "hospital_time"
    t.string   "abroad_time"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.string   "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "superadmins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "superadmins", ["email"], name: "index_superadmins_on_email", unique: true
  add_index "superadmins", ["reset_password_token"], name: "index_superadmins_on_reset_password_token", unique: true

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
