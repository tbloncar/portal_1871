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

ActiveRecord::Schema.define(:version => 20130511164107) do

  create_table "companies", :force => true do |t|
    t.string "name"
    t.string "website"
    t.text   "bio"
    t.string "logo_url"
    t.string "twitter"
    t.string "linkedin"
    t.string "google"
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
    t.string   "website"
    t.string   "google"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
