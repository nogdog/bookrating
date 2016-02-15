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

ActiveRecord::Schema.define(version: 20160215020541) do

  create_table "authors", force: :cascade do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "name_suffix"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "authors", ["first_name"], name: "index_authors_on_first_name"
  add_index "authors", ["last_name"], name: "index_authors_on_last_name"

  create_table "book_to_authors", force: :cascade do |t|
    t.integer  "book_id"
    t.integer  "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "book_to_authors", ["author_id"], name: "index_book_to_authors_on_author_id"
  add_index "book_to_authors", ["book_id"], name: "index_book_to_authors_on_book_id"

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.string   "asin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "books", ["asin"], name: "index_books_on_asin"
  add_index "books", ["title"], name: "index_books_on_title"

  create_table "rating_types", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.integer  "review_id"
    t.integer  "rating_type_id"
    t.integer  "rating"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "ratings", ["rating_type_id"], name: "index_ratings_on_rating_type_id"
  add_index "ratings", ["review_id"], name: "index_ratings_on_review_id"

  create_table "reviews", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reviews", ["book_id"], name: "index_reviews_on_book_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "login"
    t.string   "password"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "users", ["login"], name: "index_users_on_login"

end
