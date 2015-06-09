class GamesController < ApplicationController
  def edit
    @game = Game.find(params[:id])
  end 

  def update
    @game = Game.find(params[:id])
    @game.update(:game_info => params[:game][:game_info], :game_time => params[:game][:game_time], :game_date => params[:game][:game_date], :location => params[:game][:location])
    @team = @game.team
    redirect_to team_path(@team)
  end 

  def create
    @game = Game.create(:game_info => params[:game][:game_info], :game_time => params[:game][:game_time], :game_date => params[:game][:game_date], :location => params[:game][:location])
    @team = Team.find(params[:game][:team_id].to_i)
    @team.games << @game
    redirect_to team_path(@team)
  end 

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to current_user
  end

  def game_params
    params.require(:game).permit(:game_time, :game_date, :location, :game_info, :team_id, :user_id)
  end  
end
