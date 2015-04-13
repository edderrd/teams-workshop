class TeamsController < ApplicationController

  def index
    @teams = Team.includes(:players).take(20)
    render json: @teams
  end

  def show
    @team = Team.find(param[:id])
    render json: @team
  end
end
