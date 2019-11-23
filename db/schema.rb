# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_23_115639) do

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "team_acronym"
    t.string "team_name"
    t.integer "games_played"
    t.string "minutes_per_game"
    t.float "field_goals_attempted_per_game"
    t.float "field_goals_made_per_game"
    t.float "field_goal_percentage"
    t.float "free_throw_percentage"
    t.float "three_point_attempted_per_game"
    t.float "three_point_made_per_game"
    t.float "three_point_percentage"
    t.float "points_per_game"
    t.float "offensive_rebounds_per_game"
    t.float "defensive_rebounds_per_game"
    t.float "rebounds_per_game"
    t.float "assists_per_game"
    t.float "steals_per_game"
    t.float "blocks_per_game"
    t.float "turnovers_per_game"
    t.float "player_efficiency_rating"
    t.integer "team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
