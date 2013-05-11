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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130511190251) do

  create_table "companies", :force => true do |t|
    t.string "name"
    t.string "website"
    t.text   "bio"
    t.string "logo_url"
    t.string "twitter"
    t.string "linkedin"
    t.string "google"
  end

  create_table "levels", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "memberships", :force => true do |t|
    t.integer "user_id"
    t.integer "company_id"
    t.integer "role_id",    :limit => 255
  end

  create_table "needs", :force => true do |t|
    t.integer "company_id"
    t.integer "resource_id"
    t.integer "level_id"
    t.string  "description"
  end

  create_table "resources", :force => true do |t|
    t.string "name"
    t.string "url"
  end

  create_table "roles", :force => true do |t|
    t.string "name"
  end

  create_table "skills", :force => true do |t|
    t.integer "user_id"
    t.integer "resource_id"
    t.integer "level_id"
    t.string  "description"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "first_name"
    t.string   "last_name"
    t.text     "bio"
    t.string   "github"
    t.string   "twitter"
    t.string   "dribbble"
    t.string   "linkedin"
    t.string   "google"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "website"
  end

end
