# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'

Team.destroy_all
puts "Destroyed Teams"

url = "https://nba-players.herokuapp.com/teams"
response = RestClient.get(url)
parsed_json = JSON.parse(response)
parsed_json.each do |team_element|
    team = team_element
    Team.create(name: team)
end

puts "Created New Teams"

Player.destroy_all
puts "Destroyed Players"

url = "https://nba-players.herokuapp.com/players-stats"
response = RestClient.get(url)
parsed_json = JSON.parse(response)
parsed_json.each do |player_hash|
    name = player_hash["name"]
    team_acronym = player_hash["team_acronym"]
    team_name = player_hash["team_name"]
    games_played = player_hash["games_played"]
    minutes_per_game = player_hash["minutes_per_game"]
    field_goals_attempted_per_game = player_hash["field_goals_attempted_per_game"]
    field_goals_made_per_game = player_hash["field_goals_made_per_game"]
    field_goal_percentage = player_hash["field_goal_percentage"]
    free_throw_percentage = player_hash["free_throw_percentage"]
    three_point_attempted_per_game = player_hash["three_point_attempted_per_game"]
    three_point_made_per_game = player_hash["three_point_made_per_game"]
    three_point_percentage = player_hash["three_point_percentage"]
    points_per_game = player_hash["points_per_game"]
    offensive_rebounds_per_game = player_hash["offensive_rebounds_per_game"]
    defensive_rebounds_per_game = player_hash["defensive_rebounds_per_game"]
    rebounds_per_game = player_hash["rebounds_per_game"]
    assists_per_game = player_hash["assists_per_game"]
    steals_per_game = player_hash["steals_per_game"]
    blocks_per_game = player_hash["blocks_per_game"]
    turnovers_per_game = player_hash["turnovers_per_game"]
    player_efficiency_rating = player_hash["player_efficiency_rating"]
    team_id = Team.find_by_name("#{team_acronym}").id


    Player.create({
        name: name,
        team_acronym: team_acronym,
        team_name: team_name,
        games_played: games_played,
        minutes_per_game: minutes_per_game,
        field_goals_attempted_per_game: field_goals_attempted_per_game,
        field_goals_made_per_game: field_goals_made_per_game,
        field_goal_percentage: field_goal_percentage,
        free_throw_percentage: free_throw_percentage,
        three_point_attempted_per_game: three_point_attempted_per_game,
        three_point_made_per_game: three_point_made_per_game,
        three_point_percentage: three_point_percentage,
        points_per_game: points_per_game,
        offensive_rebounds_per_game: offensive_rebounds_per_game,
        defensive_rebounds_per_game: defensive_rebounds_per_game,
        rebounds_per_game: rebounds_per_game,
        assists_per_game: assists_per_game,
        steals_per_game: steals_per_game,
        blocks_per_game: blocks_per_game,
        turnovers_per_game: turnovers_per_game,
        player_efficiency_rating: player_efficiency_rating,
        team_id: team_id
    })
end

puts "Created New Players"