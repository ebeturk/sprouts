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

ActiveRecord::Schema[7.0].define(version: 2022_09_01_075921) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chatrooms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interests", force: :cascade do |t|
    t.boolean "match", default: false
    t.bigint "plant_interest_id"
    t.bigint "plant_exchange_id"
    t.bigint "user_interest_id"
    t.bigint "user_exchange_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plant_exchange_id"], name: "index_interests_on_plant_exchange_id"
    t.index ["plant_interest_id"], name: "index_interests_on_plant_interest_id"
    t.index ["user_exchange_id"], name: "index_interests_on_user_exchange_id"
    t.index ["user_interest_id"], name: "index_interests_on_user_interest_id"
  end

  create_table "marks", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "plant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plant_id"], name: "index_marks_on_plant_id"
    t.index ["user_id"], name: "index_marks_on_user_id"
  end

  create_table "matches", force: :cascade do |t|
    t.bigint "user_1_id"
    t.bigint "user_2_id"
    t.bigint "plant_1_id"
    t.bigint "plant_2_id"
    t.boolean "exchanged", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plant_1_id"], name: "index_matches_on_plant_1_id"
    t.index ["plant_2_id"], name: "index_matches_on_plant_2_id"
    t.index ["user_1_id"], name: "index_matches_on_user_1_id"
    t.index ["user_2_id"], name: "index_matches_on_user_2_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "content"
    t.bigint "chatroom_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chatroom_id"], name: "index_messages_on_chatroom_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "lighting"
    t.string "watering"
    t.string "temperature"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_plants_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.text "description"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end


  add_foreign_key "chatrooms", "users", column: "user_1_id"
  add_foreign_key "chatrooms", "users", column: "user_2_id"

  add_foreign_key "marks", "plants"
  add_foreign_key "marks", "users"
  add_foreign_key "matches", "plants", column: "plant_1_id"
  add_foreign_key "matches", "plants", column: "plant_2_id"
  add_foreign_key "matches", "users", column: "user_1_id"
  add_foreign_key "matches", "users", column: "user_2_id"
  add_foreign_key "messages", "chatrooms"
  add_foreign_key "messages", "users"
  add_foreign_key "plants", "users"
end
