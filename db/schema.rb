# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_06_001414) do

  create_table "categories", force: :cascade do |t|
    t.float "score"
    t.string "label"
    t.integer "watson_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "keywords", force: :cascade do |t|
    t.string "text"
    t.float "relevance"
    t.integer "count"
    t.integer "watson_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "slides", force: :cascade do |t|
    t.string "photo"
    t.string "keyword"
    t.text "prompt"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "slidewatsons", force: :cascade do |t|
    t.integer "slide_id"
    t.integer "watson_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, default: "2019-12-05 15:33:40", null: false
    t.datetime "updated_at", precision: 6, default: "2019-12-05 15:33:40", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "userwatsons", force: :cascade do |t|
    t.integer "user_id"
    t.integer "watson_id"
    t.datetime "created_at", precision: 6, default: "2019-12-05 15:33:40", null: false
    t.datetime "updated_at", precision: 6, default: "2019-12-05 15:33:40", null: false
  end

  create_table "watsons", force: :cascade do |t|
    t.text "text"
    t.string "sentiment_label"
    t.float "sentiment_score"
    t.float "emotion_sadness"
    t.float "emotion_joy"
    t.float "emotion_fear"
    t.float "emotion_disgust"
    t.float "emotion_anger"
    t.string "keywords"
    t.string "categories"
    t.string "entities"
    t.datetime "created_at", precision: 6, default: "2019-12-05 15:33:40", null: false
    t.datetime "updated_at", precision: 6, default: "2019-12-05 15:33:40", null: false
  end

end
