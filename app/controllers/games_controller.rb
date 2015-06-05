class GamesController < ApplicationController
  def new
  end 

  def create
    @game = Game.create(:game_info => params[:game][:game_info], :game_time => params[:game][:game_time], :location => params[:game][:location])
    @team = Team.find(params[:game][:team_id].to_i)
    @team.games << @game
    binding.pry
  end 

  def game_params
  end 
end
