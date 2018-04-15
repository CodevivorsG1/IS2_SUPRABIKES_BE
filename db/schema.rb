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

ActiveRecord::Schema.define(version: 20180415205529) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bicycles", force: :cascade do |t|
    t.integer "id_bicy"
    t.string "brand_bicy"
    t.string "material_bicy"
    t.string "components_bicy"
    t.float "price_bicy"
    t.string "usetype_bicy"
    t.string "description_bicy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "store_id"
    t.index ["store_id"], name: "index_bicycles_on_store_id"
  end

  create_table "cities", force: :cascade do |t|
    t.integer "idcity"
    t.string "name_city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "forum_id"
    t.integer "user_id"
    t.index ["forum_id"], name: "index_comments_on_forum_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "components", force: :cascade do |t|
    t.string "type_component"
    t.float "price_component"
    t.string "description_component"
    t.string "brand_component"
    t.float "sizes_component"
    t.string "material_component"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "store_id"
    t.index ["store_id"], name: "index_components_on_store_id"
  end

  create_table "forums", force: :cascade do |t|
    t.string "topic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_forums_on_user_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "name"
    t.string "imageable_type"
    t.integer "imageable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "this_image_file_name"
    t.string "this_image_content_type"
    t.integer "this_image_file_size"
    t.datetime "this_image_updated_at"
    t.index ["imageable_type", "imageable_id"], name: "index_images_on_imageable_type_and_imageable_id"
  end

  create_table "stores", force: :cascade do |t|
    t.integer "id_store"
    t.string "name_store"
    t.string "address_store"
    t.integer "score_store"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "authentication_token", limit: 30
    t.integer "city_id"
    t.bigint "celphone_store"
    t.bigint "phonenum_store"
    t.index ["authentication_token"], name: "index_stores_on_authentication_token", unique: true
    t.index ["city_id"], name: "index_stores_on_city_id"
    t.index ["email"], name: "index_stores_on_email", unique: true
    t.index ["reset_password_token"], name: "index_stores_on_reset_password_token", unique: true
  end

  create_table "technicians", force: :cascade do |t|
    t.integer "id_technical"
    t.string "NameTec"
    t.string "SurnameTec"
    t.string "typeworktec"
    t.float "costhourtec"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "authentication_token", limit: 30
    t.bigint "phonenumtec"
    t.integer "city_id"
    t.index ["authentication_token"], name: "index_technicians_on_authentication_token", unique: true
    t.index ["city_id"], name: "index_technicians_on_city_id"
    t.index ["email"], name: "index_technicians_on_email", unique: true
    t.index ["reset_password_token"], name: "index_technicians_on_reset_password_token", unique: true
  end

  create_table "transactions", force: :cascade do |t|
    t.string "date_transaction"
    t.string "type_transaction"
    t.float "total_transaction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "technician_id"
    t.integer "user_id"
    t.integer "store_id"
    t.index ["store_id"], name: "index_transactions_on_store_id"
    t.index ["technician_id"], name: "index_transactions_on_technician_id"
    t.index ["user_id"], name: "index_transactions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer "city_id"
    t.integer "idUser"
    t.string "nameUser"
    t.string "surnameUser"
    t.string "genderUser"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "authentication_token", limit: 30
    t.bigint "phonenumUser"
    t.bigint "celphoneUser"
    t.index ["authentication_token"], name: "index_users_on_authentication_token", unique: true
    t.index ["city_id"], name: "index_users_on_city_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
