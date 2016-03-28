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

ActiveRecord::Schema.define(version: 20151113001830) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activity_items", force: true do |t|
    t.integer  "user_id"
    t.string   "action_type"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.string   "resource_title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "activity_items", ["action_type"], name: "index_activity_items_on_action_type", using: :btree
  add_index "activity_items", ["resource_id"], name: "index_activity_items_on_resource_id", using: :btree
  add_index "activity_items", ["resource_type"], name: "index_activity_items_on_resource_type", using: :btree
  add_index "activity_items", ["user_id"], name: "index_activity_items_on_user_id", using: :btree

  create_table "posts", force: true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "recipes", force: true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "recipes", ["user_id"], name: "index_recipes_on_user_id", using: :btree

  create_table "reviews", force: true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id", using: :btree

end
