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

ActiveRecord::Schema.define(version: 2019_11_04_075935) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "collections", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_collections_on_user_id"
  end

  create_table "cuisine_meal_tags", force: :cascade do |t|
    t.bigint "cuisine_tag_id"
    t.bigint "meal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cuisine_tag_id"], name: "index_cuisine_meal_tags_on_cuisine_tag_id"
    t.index ["meal_id"], name: "index_cuisine_meal_tags_on_meal_id"
  end

  create_table "cuisine_tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diet_meal_tags", force: :cascade do |t|
    t.bigint "diet_tag_id"
    t.bigint "meal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["diet_tag_id"], name: "index_diet_meal_tags_on_diet_tag_id"
    t.index ["meal_id"], name: "index_diet_meal_tags_on_meal_id"
  end

  create_table "diet_tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mealphotos", force: :cascade do |t|
    t.string "photo"
    t.bigint "meal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meal_id"], name: "index_mealphotos_on_meal_id"
  end

  create_table "meals", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.float "price"
    t.string "meal_type"
    t.float "average_rating"
    t.bigint "user_id"
    t.bigint "restaurant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_meals_on_restaurant_id"
    t.index ["user_id"], name: "index_meals_on_user_id"
  end

  create_table "pins", force: :cascade do |t|
    t.bigint "meal_id"
    t.bigint "collection_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["collection_id"], name: "index_pins_on_collection_id"
    t.index ["meal_id"], name: "index_pins_on_meal_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "website_url"
    t.string "instagram_handle"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "content"
    t.bigint "meal_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meal_id"], name: "index_reviews_on_meal_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "location"
    t.string "avatar"
    t.text "about_me"
    t.boolean "trusted_reviewer"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "collections", "users"
  add_foreign_key "cuisine_meal_tags", "cuisine_tags"
  add_foreign_key "cuisine_meal_tags", "meals"
  add_foreign_key "diet_meal_tags", "diet_tags"
  add_foreign_key "diet_meal_tags", "meals"
  add_foreign_key "mealphotos", "meals"
  add_foreign_key "meals", "restaurants"
  add_foreign_key "meals", "users"
  add_foreign_key "pins", "collections"
  add_foreign_key "pins", "meals"
  add_foreign_key "reviews", "meals"
  add_foreign_key "reviews", "users"
end
