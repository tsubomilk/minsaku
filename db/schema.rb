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

ActiveRecord::Schema.define(version: 2024_02_29_065247) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "post_id"
    t.string "user_name"
    t.string "group_name"
    t.string "content"
    t.datetime "created_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer "category_id"
    t.string "user_name"
    t.string "group_name"
    t.string "title"
    t.string "whom_question"
    t.string "for_question"
    t.string "how_question"
    t.string "img_first"
    t.string "img_second"
    t.string "movie_link"
    t.string "content"
    t.integer "like_num"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
