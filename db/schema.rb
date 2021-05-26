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

ActiveRecord::Schema.define(version: 2021_05_26_131116) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "title"
    t.integer "index"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "extra"
  end

  create_table "comments", force: :cascade do |t|
    t.text "body"
    t.bigint "parent_id"
    t.bigint "problem_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["parent_id"], name: "index_comments_on_parent_id"
    t.index ["problem_id"], name: "index_comments_on_problem_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "problems", force: :cascade do |t|
    t.string "title"
    t.text "statement"
    t.text "solution"
    t.integer "index"
    t.bigint "topic_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "likes"
    t.string "answer"
    t.index ["topic_id"], name: "index_problems_on_topic_id"
  end

  create_table "topics", force: :cascade do |t|
    t.string "title"
    t.bigint "category_id", null: false
    t.integer "index"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_topics_on_category_id"
  end

  create_table "user_likes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "likable_type", null: false
    t.bigint "likable_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["likable_type", "likable_id"], name: "index_user_likes_on_likable"
    t.index ["user_id", "likable_type", "likable_id"], name: "index_user_likes_on_user_id_and_likable_type_and_likable_id", unique: true
    t.index ["user_id"], name: "index_user_likes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name", null: false
    t.string "provider"
    t.string "uid"
    t.string "nickname"
    t.string "email"
    t.boolean "instructor", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "picture"
    t.string "slack_token"
  end

  add_foreign_key "comments", "comments", column: "parent_id"
  add_foreign_key "comments", "problems"
  add_foreign_key "comments", "users"
  add_foreign_key "problems", "topics"
  add_foreign_key "topics", "categories"
  add_foreign_key "user_likes", "users"
end
