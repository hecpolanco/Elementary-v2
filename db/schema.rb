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

ActiveRecord::Schema.define(version: 2019_12_04_221937) do

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

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, default: "2019-12-04 16:27:14", null: false
    t.datetime "updated_at", precision: 6, default: "2019-12-04 16:27:14", null: false
  end

  create_table "userwatsons", force: :cascade do |t|
    t.integer "user_id"
    t.integer "watson_id"
    t.datetime "created_at", precision: 6, default: "2019-12-04 16:27:14", null: false
    t.datetime "updated_at", precision: 6, default: "2019-12-04 16:27:14", null: false
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
    t.datetime "created_at", precision: 6, default: "2019-12-04 16:27:14", null: false
    t.datetime "updated_at", precision: 6, default: "2019-12-04 16:27:14", null: false
  end

end
