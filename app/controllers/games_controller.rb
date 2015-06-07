class GamesController < ApplicationController
  def edit
    @game = Game.find(params[:id])
  end 

  def update
    @game = Game.find(params[:id])
    @game.update(:game_info => params[:game][:game_info], :game_time => params[:game][:game_time], :location => params[:game][:location])
    @team = @game.team
    redirect_to team_path(@team)
  end 

  def create
    @game = Game.create(:game_info => params[:game][:game_info], :game_time => params[:game][:game_time], :location => params[:game][:location])
    @team = Team.find(params[:game][:team_id].to_i)
    @team.games << @game
    redirect_to team_path(@team)
  end 

  def destroy
    @game = Game.find(params[:id])
    @team = @game.team
    @game.destroy
    redirect_to team_path(@team)
  end

  def game_params
  end 
end
