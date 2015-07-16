class GamesController < ApplicationController
 def new
        @game = Game.new
    end
    def create
        @game = Game.new(game_params)
        @game.save
        redirect_to @game
    end
        def show 
            @game=Game.find(params[:id])
        end
        def index
            @games = Game.all
        end
        def edit
            @game=Game.find(params[:id])
        end
        def update
            @game=Game.find(params[:id])
            @game.update(game_params)
            redirect_to @game 
        end
        def destroy
            @game=Game.find(params[:id])
            @game.destroy 
            redirect_to games_path
        end 
            
        private
        def game_params
            params.require(:game).permit(:home_team,:away_team,:field,:date)
        end
end
