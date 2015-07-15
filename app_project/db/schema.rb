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

ActiveRecord::Schema.define(version: 20150715200112) do

  create_table "games", force: :cascade do |t|
    t.date     "date"
    t.string   "field"
    t.string   "home_team"
    t.string   "away_team"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_nane"
    t.integer  "number"
    t.string   "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scores", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "games_id"
    t.integer  "time"
    t.string   "assist_or_goal"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "scores", ["games_id"], name: "index_scores_on_games_id"
  add_index "scores", ["player_id"], name: "index_scores_on_player_id"

end
