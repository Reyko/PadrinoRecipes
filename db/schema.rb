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

ActiveRecord::Schema.define(version: 14) do

  create_table "categories", force: true do |t|
    t.string   "type"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categorisations", force: true do |t|
    t.integer  "category_id"
    t.integer  "recipe_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "chefs", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "image_url"
    t.text     "biography"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingredient_recipes", force: true do |t|
    t.integer  "ingredient_id"
    t.integer  "recipe_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "qty"
    t.string   "name"
  end

  create_table "ingredients", force: true do |t|
    t.string   "name"
    t.string   "image_url"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.text     "description"
    t.string   "image_url"
    t.text     "instructions"
    t.integer  "cooking_time"
    t.integer  "preparation_time"
    t.integer  "serves"
    t.integer  "chef_id"
  end

end
