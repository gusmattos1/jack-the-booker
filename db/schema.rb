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

ActiveRecord::Schema.define(version: 2018_04_26_185309) do

  create_table "reservations", force: :cascade do |t|
    t.integer "user_id"
    t.integer "restaurant_id"
    t.date "date"
    t.time "time"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "number_of_people"
  end

  create_table "restaurants", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "address"
    t.integer "capacity"
    t.integer "cost"
    t.text "summary"
    t.text "menu"
    t.time "opening_hour"
    t.time "closing_hour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id"
    t.integer "restaurant_id"
    t.text "review"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
