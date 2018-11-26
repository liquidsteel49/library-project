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

ActiveRecord::Schema.define(version: 2018_11_26_234607) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_books_on_author_id"
  end

  create_table "borrowers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comics", force: :cascade do |t|
    t.boolean "user_owns"
    t.boolean "lent"
    t.string "title"
    t.bigint "writer_id"
    t.bigint "illustrator_id"
    t.boolean "series"
    t.integer "issue"
    t.integer "current"
    t.boolean "ongoing"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["illustrator_id"], name: "index_comics_on_illustrator_id"
    t.index ["writer_id"], name: "index_comics_on_writer_id"
  end

  create_table "examples", force: :cascade do |t|
    t.text "text", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id"
  end

  create_table "friends", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "contact_info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "illustrators", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "pen_name"
    t.string "known_for"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lent_comics", force: :cascade do |t|
    t.bigint "comic_id"
    t.bigint "friend_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comic_id"], name: "index_lent_comics_on_comic_id"
    t.index ["friend_id"], name: "index_lent_comics_on_friend_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "token", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["token"], name: "index_users_on_token", unique: true
  end

  create_table "writers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "pen_name"
    t.string "known_for"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "books", "authors"
  add_foreign_key "comics", "illustrators"
  add_foreign_key "comics", "writers"
  add_foreign_key "examples", "users"
  add_foreign_key "lent_comics", "comics"
  add_foreign_key "lent_comics", "friends"
end
