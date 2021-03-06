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

ActiveRecord::Schema.define(version: 20160811223206) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.string   "author"
    t.string   "description"
    t.string   "img_url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "list_id"
    t.index ["list_id"], name: "index_books_on_list_id", using: :btree
  end

  create_table "followings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "follower_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "list_users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "list_id"
    t.index ["list_id"], name: "index_list_users_on_list_id", using: :btree
    t.index ["user_id"], name: "index_list_users_on_user_id", using: :btree
  end

  create_table "lists", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.string   "img_url"
    t.string   "list_type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.string   "director"
    t.string   "description"
    t.string   "img_url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "list_id"
    t.index ["list_id"], name: "index_movies_on_list_id", using: :btree
  end

  create_table "places", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "description"
    t.string   "img_url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "list_id"
    t.index ["list_id"], name: "index_places_on_list_id", using: :btree
  end

  create_table "randos", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.string   "img_url"
    t.string   "link_url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "list_id"
    t.index ["list_id"], name: "index_randos_on_list_id", using: :btree
  end

  create_table "sessions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string   "title"
    t.string   "artist"
    t.string   "album"
    t.string   "description"
    t.string   "img_url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "list_id"
    t.index ["list_id"], name: "index_songs_on_list_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "bio"
    t.string   "password_digest"
    t.string   "img_url"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
