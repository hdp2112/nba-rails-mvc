class TeamsController < ApplicationController

    def index
        @teams = Team.all
    end

    def show
        @team = Team.find(params[:id])
        @players = @team.players
    end

    def delete
        @player = Player.find(params[:id])
        @player.destroy
        redirect_to teams_path
    end

end