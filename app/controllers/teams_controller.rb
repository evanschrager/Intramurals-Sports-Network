class TeamsController < ApplicationController
  
  def edit
    @team = Team.find(params[:team_id][:id])
    @user = User.find(params[:id])
    @team.users << @user
    redirect_to team_path(@team) 
  end

  def create
    @user = User.find(params[:team][:user_id].to_i)
    @team = Team.create(name: params[:team][:name])

    # UserTeam.create(team_id: @team.id, user_id: @user.id)
    @user.teams << @team

    params[:team][:roster] << @user.email
    @team.roster_emails << params[:team][:roster]

    @team.save
    redirect_to team_path(@team)
  end 

  def show
    @team = Team.find(params[:id])
  end 

  private
  def team_params
    params.require(:team).permit(:name, :roster => [], :games => [])
  end
end
