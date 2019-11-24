class Player < ActiveRecord::Base
    belongs_to :team, optional: true

    def self.highest_points_per_game
        @players = Player.all
        @players.map do |player| 
            player[:points_per_game]
        end.max
    end

    def self.highest_rebounds_per_game
        @players = Player.all
        @players.map do |player| 
            player[:rebounds_per_game]
        end.max
    end

    def self.highest_per_game(arg)
        @players = Player.all
        @players.map do |player|
            player[:"#{arg}_per_game"]
        end.max
    end
    
end