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

ActiveRecord::Schema.define(version: 20160712064531) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "apis", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bath_supplies", force: :cascade do |t|
    t.string   "title"
    t.string   "category"
    t.text     "ingredient"
    t.text     "usage"
    t.string   "made_by_country"
    t.text     "description"
    t.string   "brand"
    t.string   "effect"
    t.string   "certification"
    t.string   "age_group"
    t.integer  "price"
    t.integer  "user_id"
    t.string   "store_name"
    t.integer  "quantity"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "avatar1_file_name"
    t.string   "avatar1_content_type"
    t.integer  "avatar1_file_size"
    t.datetime "avatar1_updated_at"
    t.string   "avatar2_file_name"
    t.string   "avatar2_content_type"
    t.integer  "avatar2_file_size"
    t.datetime "avatar2_updated_at"
    t.string   "avatar3_file_name"
    t.string   "avatar3_content_type"
    t.integer  "avatar3_file_size"
    t.datetime "avatar3_updated_at"
    t.string   "avatar4_file_name"
    t.string   "avatar4_content_type"
    t.integer  "avatar4_file_size"
    t.datetime "avatar4_updated_at"
    t.string   "avatar5_file_name"
    t.string   "avatar5_content_type"
    t.integer  "avatar5_file_size"
    t.datetime "avatar5_updated_at"
  end

  create_table "beauty_equipments", force: :cascade do |t|
    t.string   "title"
    t.string   "category"
    t.string   "brand"
    t.string   "made_by_country"
    t.text     "description"
    t.string   "feature"
    t.string   "modal_number"
    t.string   "color"
    t.integer  "price"
    t.integer  "user_id"
    t.string   "store_name"
    t.integer  "quantity"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "avatar1_file_name"
    t.string   "avatar1_content_type"
    t.integer  "avatar1_file_size"
    t.datetime "avatar1_updated_at"
    t.string   "avatar2_file_name"
    t.string   "avatar2_content_type"
    t.integer  "avatar2_file_size"
    t.datetime "avatar2_updated_at"
    t.string   "avatar3_file_name"
    t.string   "avatar3_content_type"
    t.integer  "avatar3_file_size"
    t.datetime "avatar3_updated_at"
    t.string   "avatar4_file_name"
    t.string   "avatar4_content_type"
    t.integer  "avatar4_file_size"
    t.datetime "avatar4_updated_at"
    t.string   "avatar5_file_name"
    t.string   "avatar5_content_type"
    t.integer  "avatar5_file_size"
    t.datetime "avatar5_updated_at"
  end

  create_table "buyer_reports", force: :cascade do |t|
    t.string   "title"
    t.string   "purchase_date"
    t.string   "description"
    t.string   "user_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "car_accessories", force: :cascade do |t|
    t.string   "title"
    t.string   "price"
    t.integer  "quantity"
    t.string   "size"
    t.string   "weight"
    t.string   "made_by_country"
    t.string   "made_with"
    t.text     "description"
    t.string   "brand"
    t.text     "specification"
    t.string   "modal_number"
    t.string   "color"
    t.string   "feature"
    t.integer  "user_id"
    t.string   "store_name"
    t.string   "category"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "avatar1_file_name"
    t.string   "avatar1_content_type"
    t.integer  "avatar1_file_size"
    t.datetime "avatar1_updated_at"
    t.string   "avatar2_file_name"
    t.string   "avatar2_content_type"
    t.integer  "avatar2_file_size"
    t.datetime "avatar2_updated_at"
    t.string   "avatar3_file_name"
    t.string   "avatar3_content_type"
    t.integer  "avatar3_file_size"
    t.datetime "avatar3_updated_at"
    t.string   "avatar4_file_name"
    t.string   "avatar4_content_type"
    t.integer  "avatar4_file_size"
    t.datetime "avatar4_updated_at"
    t.string   "avatar5_file_name"
    t.string   "avatar5_content_type"
    t.integer  "avatar5_file_size"
    t.datetime "avatar5_updated_at"
  end

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "message"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "computers", force: :cascade do |t|
    t.string   "title"
    t.string   "price"
    t.integer  "quantity"
    t.string   "size"
    t.string   "weight"
    t.string   "thickness"
    t.string   "made_by_country"
    t.text     "description"
    t.string   "brand"
    t.string   "category"
    t.string   "modal_number"
    t.string   "color"
    t.string   "feature"
    t.string   "operation_system"
    t.integer  "user_id"
    t.string   "store_name"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "avatar1_file_name"
    t.string   "avatar1_content_type"
    t.integer  "avatar1_file_size"
    t.datetime "avatar1_updated_at"
    t.string   "avatar2_file_name"
    t.string   "avatar2_content_type"
    t.integer  "avatar2_file_size"
    t.datetime "avatar2_updated_at"
    t.string   "avatar3_file_name"
    t.string   "avatar3_content_type"
    t.integer  "avatar3_file_size"
    t.datetime "avatar3_updated_at"
    t.string   "avatar4_file_name"
    t.string   "avatar4_content_type"
    t.integer  "avatar4_file_size"
    t.datetime "avatar4_updated_at"
    t.string   "avatar5_file_name"
    t.string   "avatar5_content_type"
    t.integer  "avatar5_file_size"
    t.datetime "avatar5_updated_at"
  end

  create_table "conversations", force: :cascade do |t|
    t.integer  "sender_id"
    t.integer  "recipient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "conversations", ["recipient_id"], name: "index_conversations_on_recipient_id", using: :btree
  add_index "conversations", ["sender_id"], name: "index_conversations_on_sender_id", using: :btree

  create_table "electrical_equipments", force: :cascade do |t|
    t.string   "title"
    t.string   "price"
    t.integer  "quantity"
    t.string   "size"
    t.string   "weight"
    t.string   "made_by_country"
    t.text     "description"
    t.string   "brand"
    t.string   "category"
    t.string   "modal_number"
    t.string   "color"
    t.integer  "user_id"
    t.string   "store_name"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "avatar1_file_name"
    t.string   "avatar1_content_type"
    t.integer  "avatar1_file_size"
    t.datetime "avatar1_updated_at"
    t.string   "avatar2_file_name"
    t.string   "avatar2_content_type"
    t.integer  "avatar2_file_size"
    t.datetime "avatar2_updated_at"
    t.string   "avatar3_file_name"
    t.string   "avatar3_content_type"
    t.integer  "avatar3_file_size"
    t.datetime "avatar3_updated_at"
    t.string   "avatar4_file_name"
    t.string   "avatar4_content_type"
    t.integer  "avatar4_file_size"
    t.datetime "avatar4_updated_at"
    t.string   "avatar5_file_name"
    t.string   "avatar5_content_type"
    t.integer  "avatar5_file_size"
    t.datetime "avatar5_updated_at"
  end

  create_table "equipment", force: :cascade do |t|
    t.string   "title"
    t.string   "price"
    t.integer  "quantity"
    t.string   "size"
    t.string   "weight"
    t.string   "made_by_country"
    t.string   "made_with"
    t.text     "description"
    t.string   "brand"
    t.text     "specification"
    t.string   "modal_number"
    t.string   "color"
    t.integer  "user_id"
    t.string   "store_name"
    t.string   "category"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "avatar1_file_name"
    t.string   "avatar1_content_type"
    t.integer  "avatar1_file_size"
    t.datetime "avatar1_updated_at"
    t.string   "avatar2_file_name"
    t.string   "avatar2_content_type"
    t.integer  "avatar2_file_size"
    t.datetime "avatar2_updated_at"
    t.string   "avatar3_file_name"
    t.string   "avatar3_content_type"
    t.integer  "avatar3_file_size"
    t.datetime "avatar3_updated_at"
    t.string   "avatar4_file_name"
    t.string   "avatar4_content_type"
    t.integer  "avatar4_file_size"
    t.datetime "avatar4_updated_at"
    t.string   "avatar5_file_name"
    t.string   "avatar5_content_type"
    t.integer  "avatar5_file_size"
    t.datetime "avatar5_updated_at"
  end

  create_table "fashion_accessories", force: :cascade do |t|
    t.string   "title"
    t.string   "price"
    t.integer  "quantity"
    t.string   "made_by_country"
    t.string   "made_with"
    t.text     "description"
    t.string   "brand"
    t.integer  "user_id"
    t.string   "store_name"
    t.string   "category"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "avatar1_file_name"
    t.string   "avatar1_content_type"
    t.integer  "avatar1_file_size"
    t.datetime "avatar1_updated_at"
    t.string   "avatar2_file_name"
    t.string   "avatar2_content_type"
    t.integer  "avatar2_file_size"
    t.datetime "avatar2_updated_at"
    t.string   "avatar3_file_name"
    t.string   "avatar3_content_type"
    t.integer  "avatar3_file_size"
    t.datetime "avatar3_updated_at"
    t.string   "avatar4_file_name"
    t.string   "avatar4_content_type"
    t.integer  "avatar4_file_size"
    t.datetime "avatar4_updated_at"
    t.string   "avatar5_file_name"
    t.string   "avatar5_content_type"
    t.integer  "avatar5_file_size"
    t.datetime "avatar5_updated_at"
  end

  create_table "fashion_bags", force: :cascade do |t|
    t.string   "title"
    t.string   "price"
    t.integer  "quantity"
    t.string   "made_by_country"
    t.string   "made_with"
    t.text     "description"
    t.string   "bag_type"
    t.string   "size"
    t.string   "brand"
    t.integer  "user_id"
    t.string   "store_name"
    t.string   "color"
    t.string   "category"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "avatar1_file_name"
    t.string   "avatar1_content_type"
    t.integer  "avatar1_file_size"
    t.datetime "avatar1_updated_at"
    t.string   "avatar2_file_name"
    t.string   "avatar2_content_type"
    t.integer  "avatar2_file_size"
    t.datetime "avatar2_updated_at"
    t.string   "avatar3_file_name"
    t.string   "avatar3_content_type"
    t.integer  "avatar3_file_size"
    t.datetime "avatar3_updated_at"
    t.string   "avatar4_file_name"
    t.string   "avatar4_content_type"
    t.integer  "avatar4_file_size"
    t.datetime "avatar4_updated_at"
    t.string   "avatar5_file_name"
    t.string   "avatar5_content_type"
    t.integer  "avatar5_file_size"
    t.datetime "avatar5_updated_at"
  end

  create_table "fashion_clothings", force: :cascade do |t|
    t.string   "title"
    t.integer  "price"
    t.integer  "quantity"
    t.string   "size"
    t.string   "made_by_country"
    t.string   "made_with"
    t.text     "description"
    t.string   "gender"
    t.string   "brand"
    t.integer  "user_id"
    t.string   "color"
    t.string   "store_name"
    t.string   "category"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "avatar1_file_name"
    t.string   "avatar1_content_type"
    t.integer  "avatar1_file_size"
    t.datetime "avatar1_updated_at"
    t.string   "avatar2_file_name"
    t.string   "avatar2_content_type"
    t.integer  "avatar2_file_size"
    t.datetime "avatar2_updated_at"
    t.string   "avatar3_file_name"
    t.string   "avatar3_content_type"
    t.integer  "avatar3_file_size"
    t.datetime "avatar3_updated_at"
    t.string   "avatar4_file_name"
    t.string   "avatar4_content_type"
    t.integer  "avatar4_file_size"
    t.datetime "avatar4_updated_at"
    t.string   "avatar5_file_name"
    t.string   "avatar5_content_type"
    t.integer  "avatar5_file_size"
    t.datetime "avatar5_updated_at"
  end

  create_table "fashion_footwears", force: :cascade do |t|
    t.string   "title"
    t.string   "price"
    t.integer  "quantity"
    t.string   "made_by_country"
    t.string   "made_with"
    t.text     "description"
    t.string   "footwear_type"
    t.string   "size"
    t.string   "brand"
    t.integer  "user_id"
    t.string   "store_name"
    t.string   "color"
    t.string   "category"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "avatar1_file_name"
    t.string   "avatar1_content_type"
    t.integer  "avatar1_file_size"
    t.datetime "avatar1_updated_at"
    t.string   "avatar2_file_name"
    t.string   "avatar2_content_type"
    t.integer  "avatar2_file_size"
    t.datetime "avatar2_updated_at"
    t.string   "avatar3_file_name"
    t.string   "avatar3_content_type"
    t.integer  "avatar3_file_size"
    t.datetime "avatar3_updated_at"
    t.string   "avatar4_file_name"
    t.string   "avatar4_content_type"
    t.integer  "avatar4_file_size"
    t.datetime "avatar4_updated_at"
    t.string   "avatar5_file_name"
    t.string   "avatar5_content_type"
    t.integer  "avatar5_file_size"
    t.datetime "avatar5_updated_at"
  end

  create_table "fashion_hats", force: :cascade do |t|
    t.string   "title"
    t.string   "price"
    t.integer  "quantity"
    t.string   "made_by_country"
    t.string   "made_with"
    t.text     "description"
    t.string   "brand"
    t.string   "hat_type"
    t.integer  "user_id"
    t.string   "store_name"
    t.string   "category"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "avatar1_file_name"
    t.string   "avatar1_content_type"
    t.integer  "avatar1_file_size"
    t.datetime "avatar1_updated_at"
    t.string   "avatar2_file_name"
    t.string   "avatar2_content_type"
    t.integer  "avatar2_file_size"
    t.datetime "avatar2_updated_at"
    t.string   "avatar3_file_name"
    t.string   "avatar3_content_type"
    t.integer  "avatar3_file_size"
    t.datetime "avatar3_updated_at"
    t.string   "avatar4_file_name"
    t.string   "avatar4_content_type"
    t.integer  "avatar4_file_size"
    t.datetime "avatar4_updated_at"
    t.string   "avatar5_file_name"
    t.string   "avatar5_content_type"
    t.integer  "avatar5_file_size"
    t.datetime "avatar5_updated_at"
  end

  create_table "fashions", force: :cascade do |t|
    t.string   "product_name"
    t.string   "available_size"
    t.string   "available_color"
    t.integer  "shop_id"
    t.string   "shop_name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "favourites", force: :cascade do |t|
    t.string   "item"
    t.integer  "user_id"
    t.string   "item_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fronts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gifts", force: :cascade do |t|
    t.string   "title"
    t.string   "price"
    t.integer  "quantity"
    t.string   "weight"
    t.string   "made_by_country"
    t.string   "made_with"
    t.text     "description"
    t.string   "color"
    t.integer  "user_id"
    t.string   "store_name"
    t.string   "category"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "avatar1_file_name"
    t.string   "avatar1_content_type"
    t.integer  "avatar1_file_size"
    t.datetime "avatar1_updated_at"
    t.string   "avatar2_file_name"
    t.string   "avatar2_content_type"
    t.integer  "avatar2_file_size"
    t.datetime "avatar2_updated_at"
    t.string   "avatar3_file_name"
    t.string   "avatar3_content_type"
    t.integer  "avatar3_file_size"
    t.datetime "avatar3_updated_at"
    t.string   "avatar4_file_name"
    t.string   "avatar4_content_type"
    t.integer  "avatar4_file_size"
    t.datetime "avatar4_updated_at"
    t.string   "avatar5_file_name"
    t.string   "avatar5_content_type"
    t.integer  "avatar5_file_size"
    t.datetime "avatar5_updated_at"
  end

  create_table "home_appliances", force: :cascade do |t|
    t.string   "title"
    t.string   "price"
    t.integer  "quantity"
    t.string   "size"
    t.string   "weight"
    t.string   "made_by_country"
    t.text     "description"
    t.string   "brand"
    t.string   "category"
    t.string   "modal_number"
    t.string   "color"
    t.text     "feature"
    t.string   "power"
    t.string   "voltage"
    t.integer  "user_id"
    t.string   "store_name"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "avatar1_file_name"
    t.string   "avatar1_content_type"
    t.integer  "avatar1_file_size"
    t.datetime "avatar1_updated_at"
    t.string   "avatar2_file_name"
    t.string   "avatar2_content_type"
    t.integer  "avatar2_file_size"
    t.datetime "avatar2_updated_at"
    t.string   "avatar3_file_name"
    t.string   "avatar3_content_type"
    t.integer  "avatar3_file_size"
    t.datetime "avatar3_updated_at"
    t.string   "avatar4_file_name"
    t.string   "avatar4_content_type"
    t.integer  "avatar4_file_size"
    t.datetime "avatar4_updated_at"
    t.string   "avatar5_file_name"
    t.string   "avatar5_content_type"
    t.integer  "avatar5_file_size"
    t.datetime "avatar5_updated_at"
  end

  create_table "instruments", force: :cascade do |t|
    t.string   "title"
    t.string   "price"
    t.integer  "quantity"
    t.string   "dimension"
    t.string   "weight"
    t.string   "made_by_country"
    t.string   "made_with"
    t.text     "description"
    t.string   "brand"
    t.string   "modal_number"
    t.text     "specification"
    t.string   "color"
    t.integer  "user_id"
    t.string   "store_name"
    t.string   "category"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "avatar1_file_name"
    t.string   "avatar1_content_type"
    t.integer  "avatar1_file_size"
    t.datetime "avatar1_updated_at"
    t.string   "avatar2_file_name"
    t.string   "avatar2_content_type"
    t.integer  "avatar2_file_size"
    t.datetime "avatar2_updated_at"
    t.string   "avatar3_file_name"
    t.string   "avatar3_content_type"
    t.integer  "avatar3_file_size"
    t.datetime "avatar3_updated_at"
    t.string   "avatar4_file_name"
    t.string   "avatar4_content_type"
    t.integer  "avatar4_file_size"
    t.datetime "avatar4_updated_at"
    t.string   "avatar5_file_name"
    t.string   "avatar5_content_type"
    t.integer  "avatar5_file_size"
    t.datetime "avatar5_updated_at"
  end

  create_table "line_items", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "cart_id"
    t.integer  "user_id"
    t.integer  "quantity",   default: 1
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "machines", force: :cascade do |t|
    t.string   "title"
    t.string   "price"
    t.integer  "quantity"
    t.string   "dimension"
    t.string   "weight"
    t.string   "made_by_country"
    t.string   "made_with"
    t.text     "description"
    t.string   "brand"
    t.string   "category"
    t.string   "modal_number"
    t.text     "specification"
    t.string   "color"
    t.integer  "user_id"
    t.string   "store_name"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "avatar1_file_name"
    t.string   "avatar1_content_type"
    t.integer  "avatar1_file_size"
    t.datetime "avatar1_updated_at"
    t.string   "avatar2_file_name"
    t.string   "avatar2_content_type"
    t.integer  "avatar2_file_size"
    t.datetime "avatar2_updated_at"
    t.string   "avatar3_file_name"
    t.string   "avatar3_content_type"
    t.integer  "avatar3_file_size"
    t.datetime "avatar3_updated_at"
    t.string   "avatar4_file_name"
    t.string   "avatar4_content_type"
    t.integer  "avatar4_file_size"
    t.datetime "avatar4_updated_at"
    t.string   "avatar5_file_name"
    t.string   "avatar5_content_type"
    t.integer  "avatar5_file_size"
    t.datetime "avatar5_updated_at"
  end

  create_table "makeup_and_skincares", force: :cascade do |t|
    t.string   "title"
    t.string   "category"
    t.string   "certification"
    t.text     "ingredient"
    t.text     "usage"
    t.string   "made_by_country"
    t.text     "description"
    t.string   "brand"
    t.string   "color"
    t.string   "effect"
    t.integer  "price"
    t.integer  "user_id"
    t.string   "store_name"
    t.integer  "quantity"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "avatar1_file_name"
    t.string   "avatar1_content_type"
    t.integer  "avatar1_file_size"
    t.datetime "avatar1_updated_at"
    t.string   "avatar2_file_name"
    t.string   "avatar2_content_type"
    t.integer  "avatar2_file_size"
    t.datetime "avatar2_updated_at"
    t.string   "avatar3_file_name"
    t.string   "avatar3_content_type"
    t.integer  "avatar3_file_size"
    t.datetime "avatar3_updated_at"
    t.string   "avatar4_file_name"
    t.string   "avatar4_content_type"
    t.integer  "avatar4_file_size"
    t.datetime "avatar4_updated_at"
    t.string   "avatar5_file_name"
    t.string   "avatar5_content_type"
    t.integer  "avatar5_file_size"
    t.datetime "avatar5_updated_at"
  end

  create_table "medicines", force: :cascade do |t|
    t.string   "title"
    t.string   "category"
    t.string   "certification"
    t.string   "ingredient"
    t.text     "usage"
    t.string   "made_by_country"
    t.text     "description"
    t.text     "caution"
    t.integer  "price"
    t.integer  "user_id"
    t.string   "store_name"
    t.integer  "quantity"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "avatar1_file_name"
    t.string   "avatar1_content_type"
    t.integer  "avatar1_file_size"
    t.datetime "avatar1_updated_at"
    t.string   "avatar2_file_name"
    t.string   "avatar2_content_type"
    t.integer  "avatar2_file_size"
    t.datetime "avatar2_updated_at"
    t.string   "avatar3_file_name"
    t.string   "avatar3_content_type"
    t.integer  "avatar3_file_size"
    t.datetime "avatar3_updated_at"
    t.string   "avatar4_file_name"
    t.string   "avatar4_content_type"
    t.integer  "avatar4_file_size"
    t.datetime "avatar4_updated_at"
    t.string   "avatar5_file_name"
    t.string   "avatar5_content_type"
    t.integer  "avatar5_file_size"
    t.datetime "avatar5_updated_at"
  end

  create_table "messages", force: :cascade do |t|
    t.text     "body"
    t.string   "conversation_code"
    t.integer  "conversation_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "messages", ["conversation_id"], name: "index_messages_on_conversation_id", using: :btree
  add_index "messages", ["user_id"], name: "index_messages_on_user_id", using: :btree

  create_table "motorcycle_accessories", force: :cascade do |t|
    t.string   "title"
    t.string   "price"
    t.integer  "quantity"
    t.string   "size"
    t.string   "weight"
    t.string   "made_by_country"
    t.string   "made_with"
    t.text     "description"
    t.string   "brand"
    t.text     "specification"
    t.string   "modal_number"
    t.string   "color"
    t.string   "feature"
    t.integer  "user_id"
    t.string   "store_name"
    t.string   "category"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "avatar1_file_name"
    t.string   "avatar1_content_type"
    t.integer  "avatar1_file_size"
    t.datetime "avatar1_updated_at"
    t.string   "avatar2_file_name"
    t.string   "avatar2_content_type"
    t.integer  "avatar2_file_size"
    t.datetime "avatar2_updated_at"
    t.string   "avatar3_file_name"
    t.string   "avatar3_content_type"
    t.integer  "avatar3_file_size"
    t.datetime "avatar3_updated_at"
    t.string   "avatar4_file_name"
    t.string   "avatar4_content_type"
    t.integer  "avatar4_file_size"
    t.datetime "avatar4_updated_at"
    t.string   "avatar5_file_name"
    t.string   "avatar5_content_type"
    t.integer  "avatar5_file_size"
    t.datetime "avatar5_updated_at"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "customer_name"
    t.string   "customer_email"
    t.string   "customer_phone"
    t.string   "customer_city"
    t.string   "customer_township"
    t.text     "customer_address"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "cart_id"
    t.string   "order_status"
  end

  create_table "products", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "store_name"
    t.string   "title"
    t.string   "category"
    t.string   "ingredient"
    t.text     "usage"
    t.string   "made_by_country"
    t.text     "description"
    t.string   "brand"
    t.string   "effect"
    t.string   "certification"
    t.string   "age_group"
    t.integer  "price"
    t.text     "feature"
    t.string   "modal_number"
    t.string   "color"
    t.integer  "quantity"
    t.string   "size"
    t.string   "weight"
    t.string   "made_with"
    t.text     "specification"
    t.string   "thickness"
    t.string   "operation_system"
    t.string   "bag_type"
    t.string   "gender"
    t.string   "footwear_type"
    t.string   "hat_type"
    t.string   "power"
    t.string   "voltage"
    t.string   "dimension"
    t.text     "caution"
    t.string   "charges"
    t.string   "service_category"
    t.string   "fees"
    t.string   "period"
    t.string   "school"
    t.string   "mmdealer_code"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "avatar1_file_name"
    t.string   "avatar1_content_type"
    t.integer  "avatar1_file_size"
    t.datetime "avatar1_updated_at"
    t.string   "avatar2_file_name"
    t.string   "avatar2_content_type"
    t.integer  "avatar2_file_size"
    t.datetime "avatar2_updated_at"
    t.string   "avatar3_file_name"
    t.string   "avatar3_content_type"
    t.integer  "avatar3_file_size"
    t.datetime "avatar3_updated_at"
    t.string   "avatar4_file_name"
    t.string   "avatar4_content_type"
    t.integer  "avatar4_file_size"
    t.datetime "avatar4_updated_at"
    t.string   "avatar5_file_name"
    t.string   "avatar5_content_type"
    t.integer  "avatar5_file_size"
    t.datetime "avatar5_updated_at"
    t.string   "product_category"
  end

  create_table "services", force: :cascade do |t|
    t.string   "title"
    t.string   "charges"
    t.string   "service_category"
    t.text     "description"
    t.integer  "user_id"
    t.string   "store_name"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "avatar1_file_name"
    t.string   "avatar1_content_type"
    t.integer  "avatar1_file_size"
    t.datetime "avatar1_updated_at"
    t.string   "avatar2_file_name"
    t.string   "avatar2_content_type"
    t.integer  "avatar2_file_size"
    t.datetime "avatar2_updated_at"
    t.string   "avatar3_file_name"
    t.string   "avatar3_content_type"
    t.integer  "avatar3_file_size"
    t.datetime "avatar3_updated_at"
    t.string   "avatar4_file_name"
    t.string   "avatar4_content_type"
    t.integer  "avatar4_file_size"
    t.datetime "avatar4_updated_at"
    t.string   "avatar5_file_name"
    t.string   "avatar5_content_type"
    t.integer  "avatar5_file_size"
    t.datetime "avatar5_updated_at"
  end

  create_table "sports", force: :cascade do |t|
    t.string   "title"
    t.string   "price"
    t.integer  "quantity"
    t.string   "weight"
    t.string   "made_by_country"
    t.string   "made_with"
    t.text     "description"
    t.string   "color"
    t.string   "brand"
    t.string   "category"
    t.integer  "user_id"
    t.string   "store_name"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "avatar1_file_name"
    t.string   "avatar1_content_type"
    t.integer  "avatar1_file_size"
    t.datetime "avatar1_updated_at"
    t.string   "avatar2_file_name"
    t.string   "avatar2_content_type"
    t.integer  "avatar2_file_size"
    t.datetime "avatar2_updated_at"
    t.string   "avatar3_file_name"
    t.string   "avatar3_content_type"
    t.integer  "avatar3_file_size"
    t.datetime "avatar3_updated_at"
    t.string   "avatar4_file_name"
    t.string   "avatar4_content_type"
    t.integer  "avatar4_file_size"
    t.datetime "avatar4_updated_at"
    t.string   "avatar5_file_name"
    t.string   "avatar5_content_type"
    t.integer  "avatar5_file_size"
    t.datetime "avatar5_updated_at"
  end

  create_table "stores", force: :cascade do |t|
    t.string   "store_name"
    t.string   "store_address"
    t.string   "store_contact"
    t.text     "description"
    t.integer  "user_id"
    t.string   "seller_name"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "telephone_accessories", force: :cascade do |t|
    t.string   "title"
    t.string   "price"
    t.integer  "quantity"
    t.string   "size"
    t.string   "weight"
    t.string   "made_by_country"
    t.text     "description"
    t.string   "brand"
    t.string   "category"
    t.string   "modal_number"
    t.string   "color"
    t.text     "feature"
    t.string   "operation_system"
    t.integer  "user_id"
    t.string   "store_name"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "avatar1_file_name"
    t.string   "avatar1_content_type"
    t.integer  "avatar1_file_size"
    t.datetime "avatar1_updated_at"
    t.string   "avatar2_file_name"
    t.string   "avatar2_content_type"
    t.integer  "avatar2_file_size"
    t.datetime "avatar2_updated_at"
    t.string   "avatar3_file_name"
    t.string   "avatar3_content_type"
    t.integer  "avatar3_file_size"
    t.datetime "avatar3_updated_at"
    t.string   "avatar4_file_name"
    t.string   "avatar4_content_type"
    t.integer  "avatar4_file_size"
    t.datetime "avatar4_updated_at"
    t.string   "avatar5_file_name"
    t.string   "avatar5_content_type"
    t.integer  "avatar5_file_size"
    t.datetime "avatar5_updated_at"
  end

  create_table "toys", force: :cascade do |t|
    t.string   "title"
    t.string   "price"
    t.integer  "quantity"
    t.string   "weight"
    t.string   "made_by_country"
    t.string   "made_with"
    t.text     "description"
    t.string   "color"
    t.string   "age_group"
    t.integer  "user_id"
    t.string   "store_name"
    t.string   "category"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "avatar1_file_name"
    t.string   "avatar1_content_type"
    t.integer  "avatar1_file_size"
    t.datetime "avatar1_updated_at"
    t.string   "avatar2_file_name"
    t.string   "avatar2_content_type"
    t.integer  "avatar2_file_size"
    t.datetime "avatar2_updated_at"
    t.string   "avatar3_file_name"
    t.string   "avatar3_content_type"
    t.integer  "avatar3_file_size"
    t.datetime "avatar3_updated_at"
    t.string   "avatar4_file_name"
    t.string   "avatar4_content_type"
    t.integer  "avatar4_file_size"
    t.datetime "avatar4_updated_at"
    t.string   "avatar5_file_name"
    t.string   "avatar5_content_type"
    t.integer  "avatar5_file_size"
    t.datetime "avatar5_updated_at"
  end

  create_table "training_and_schools", force: :cascade do |t|
    t.string   "title"
    t.string   "fees"
    t.string   "period"
    t.string   "school"
    t.text     "description"
    t.integer  "user_id"
    t.string   "store_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "user_types", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.text     "address"
    t.string   "has_store"
    t.string   "company_name"
    t.integer  "user_type_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
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
    t.string   "authentication_token"
  end

  add_index "users", ["authentication_token"], name: "index_users_on_authentication_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
