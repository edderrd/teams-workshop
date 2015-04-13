class PlayersController < ApplicationController

  def index
    @players = Player.includes(:team).take(20)
    render json: @players
  end

  def show
    @player = Player.find(params[:id])
    render json: @player
  end
end
