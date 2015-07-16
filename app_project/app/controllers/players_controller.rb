class PlayersController < ApplicationController
    def new
        @player = Player.new
    end
    def create
        @player = Player.new(player_params)
        @player.save
        redirect_to @player
    end
        def show 
            @player=Player.find(params[:id])
        end
        def index
            @players = Player.all
        end
        def edit
            @player=Player.find(params[:id])
        end
        def update
            @player=Player.find(params[:id])
            @player.update(player_params)
            redirect_to @player 
        end
        def destroy
            @player=Player.find(params[:id])
            @player.destroy 
            redirect_to players_path
        end 
            
        private
        def player_params
            params.require(:player).permit(:first_name,:last_name,:number,:position)
        end
end
