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

ActiveRecord::Schema.define(version: 20150622113408) do

  create_table "articles", force: true do |t|
    t.string   "title"
    t.text     "text"
    t.string   "cover_image_file_name"
    t.string   "cover_image_content_type"
    t.integer  "cover_image_file_size"
    t.datetime "cover_image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "content_pages", force: true do |t|
    t.string   "title"
    t.string   "content"
    t.string   "club_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cover_image_file_name"
    t.string   "cover_image_content_type"
    t.integer  "cover_image_file_size"
    t.datetime "cover_image_updated_at"
  end

  create_table "games", force: true do |t|
    t.integer  "home_team"
    t.integer  "away_team"
    t.datetime "date"
    t.integer  "home_score"
    t.integer  "away_score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", force: true do |t|
    t.string   "name"
    t.string   "occupation"
    t.integer  "phone"
    t.string   "email"
    t.date     "birth_date"
    t.integer  "vcr_team_id"
    t.integer  "team"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "members", ["vcr_team_id"], name: "index_members_on_vcr_team_id"

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scaffolds", force: true do |t|
    t.integer  "home_team"
    t.integer  "away_team"
    t.datetime "date"
    t.integer  "home_score"
    t.integer  "away_score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sponsors", force: true do |t|
    t.string   "title"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "vcr_games", force: true do |t|
    t.datetime "date"
    t.string   "home_team"
    t.string   "away_team"
    t.integer  "vcr_team"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vcr_teams", force: true do |t|
    t.string   "title"
    t.string   "age_group"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cover_image_file_name"
    t.string   "cover_image_content_type"
    t.integer  "cover_image_file_size"
    t.datetime "cover_image_updated_at"
    t.string   "team_image_file_name"
    t.string   "team_image_content_type"
    t.integer  "team_image_file_size"
    t.datetime "team_image_updated_at"
    t.string   "info"
  end

end
