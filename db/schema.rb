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

ActiveRecord::Schema.define(version: 20140622011931) do

  create_table "ability_tags", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ability_tags_carers", id: false, force: true do |t|
    t.integer "ability_tag_id"
    t.integer "carer_id"
  end

  add_index "ability_tags_carers", ["ability_tag_id"], name: "index_ability_tags_carers_on_ability_tag_id", using: :btree

  create_table "ability_tags_products", id: false, force: true do |t|
    t.integer "ability_tag_id"
    t.integer "product_id"
  end

  add_index "ability_tags_products", ["ability_tag_id"], name: "index_ability_tags_products_on_ability_tag_id", using: :btree

  create_table "administrators", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "areas", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "areas_hospitals", force: true do |t|
    t.integer "area_id"
    t.integer "hospital_id"
  end

  create_table "carers", force: true do |t|
    t.string   "staff_code"
    t.string   "name"
    t.string   "gender"
    t.string   "id_card"
    t.date     "birthday"
    t.integer  "age"
    t.integer  "weight"
    t.integer  "height"
    t.string   "native_place"
    t.string   "race"
    t.string   "political_status"
    t.string   "education"
    t.string   "address"
    t.string   "phone"
    t.string   "photo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: true do |t|
    t.string   "name"
    t.string   "gender"
    t.string   "id_card"
    t.date     "birthdate"
    t.integer  "age"
    t.integer  "weight"
    t.integer  "height"
    t.string   "language"
    t.string   "native_place"
    t.string   "race"
    t.string   "education"
    t.string   "address"
    t.string   "cellphone"
    t.string   "email"
    t.string   "fixed_phone"
    t.string   "wechat_id"
    t.string   "emergency_person_name"
    t.string   "emergency_person_phone"
    t.string   "emergency_person_wechat"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "credentials", force: true do |t|
    t.string   "email"
    t.integer  "credentialable_id"
    t.string   "credentialable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departments", force: true do |t|
    t.integer  "hospital_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hospitals", force: true do |t|
    t.integer  "city_id"
    t.string   "name"
    t.string   "level"
    t.integer  "beds_count"
    t.integer  "carers_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hospitals_managers", force: true do |t|
    t.integer "hospital_id"
    t.integer "manager_id"
  end

  create_table "managers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "operators", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.integer  "client_id"
    t.integer  "product_id"
    t.integer  "creator_id"
    t.string   "creator_type"
    t.string   "product_name"
    t.text     "product_description"
    t.float    "product_price"
    t.integer  "current_service_log_id"
    t.string   "state"
    t.datetime "service_start_time"
    t.datetime "service_end_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.integer  "hospital_id"
    t.string   "name"
    t.text     "description"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products_ability_tags", force: true do |t|
    t.integer "ability_tag_id"
    t.integer "product_id"
  end

  create_table "service_logs", force: true do |t|
    t.integer  "order_id"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "supervisors", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
