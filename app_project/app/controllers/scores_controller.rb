class ScoresController < ApplicationController
    def new
    @game = Game.find(params[:game_id])
    @score = Score.new
end

def create
        @game = Game.find(params[:game_id])
        
        if @game.scores.create(score_params)
            redirect_to @game
        else
            render 'new'
        end
    end
    private
    def score_params
        params.require(:score).permit(:time,:assist_or_goal,:player_id,:game_id)
    end
end
