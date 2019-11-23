class PlayersController < ApplicationController

    def index
        @players = Player.all
    end

    def new
        @player = Player.new
        @teams = Team.all
    end

    def create
        player = Player.create(player_params)
        redirect_to player_path(player)
    end

    def edit
        @player = Player.find(params[:id])
        @teams = Team.all
    end

    def update
        player = Player.find(params[:id])
        player.update(player_params)
        redirect_to player_path(player)
    end

    def show
        @player = Player.find(params[:id])
    end

    def delete
        player = Player.find(params[:id])
        player.destroy
        redirect_to players_path
    end

    private

    def player_params
        params.require(:player).permit(:name, :team_acronym, :team_name, :games_played, :minutes_per_game,
            :field_goals_attempted_per_game, :field_goals_made_per_game, :field_goal_percentage,
            :free_throw_percentage, :three_point_attempted_per_game, :three_point_made_per_game,
            :three_point_percentage, :points_per_game, :offensive_rebounds_per_game, :defensive_rebounds_per_game,
            :rebounds_per_game, :assists_per_game, :steals_per_game, :blocks_per_game, :turnovers_per_game,
            :player_efficiency_rating, :team_id)
    end

end