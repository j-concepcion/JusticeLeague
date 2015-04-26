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

ActiveRecord::Schema.define(version: 20150426194907) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "barangays", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.uuid     "province_id"
    t.uuid     "city_id"
    t.uuid     "user_id"
  end

  create_table "candidates", force: true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "position"
    t.integer  "age"
    t.string   "agenda"
    t.string   "achievements"
    t.integer  "votes_rendered"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar"
    t.integer  "voted_by"
  end

  create_table "cities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.uuid     "province_id"
    t.uuid     "barangay_id"
    t.uuid     "user_id"
  end

  create_table "provinces", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.uuid     "city_id"
    t.uuid     "barangay_id"
    t.uuid     "user_id"
  end

  create_table "users", force: true do |t|
    t.string   "national_id_number"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "password"
    t.string   "password_confirmation"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "gender"
    t.string   "street_adderss"
    t.date     "date_of_birth"
    t.string   "place_of_birth"
    t.string   "civil_status"
    t.string   "spouse"
    t.string   "citizenship"
    t.date     "date_of_natural_reacq"
    t.string   "cert_no_natural_reacq"
    t.integer  "por_mun_years"
    t.integer  "por_mun_months"
    t.integer  "por_phil_years"
    t.string   "profession"
    t.string   "tin"
    t.string   "first_name_father"
    t.string   "middle_name_father"
    t.string   "last_name_father"
    t.string   "first_name_mother"
    t.string   "middle_name_mother"
    t.string   "last_name_mother"
    t.uuid     "province_id"
    t.uuid     "city_id"
    t.uuid     "barangay_id"
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
    t.string   "avatar"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "votes", force: true do |t|
    t.integer  "candidate_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

end
