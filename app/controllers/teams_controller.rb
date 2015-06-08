class TeamsController < ApplicationController
  
  def edit
    @team = Team.find(params[:team_id][:id])
    @user = User.find(params[:id])
    if !@team.users.include?(@user)
      @team.users << @user  
      redirect_to team_path(@team) 
    else
      redirect_to user_path(@user) 
    end
  end

  def create

    @user = User.find(params[:team][:user_id].to_i)
    @team = Team.create(name: params[:team][:name])

    @user.teams << @team

    params[:team][:roster] << @user.email
    @team.roster_emails << params[:team][:roster]

    @sport = Sport.find(params[:team][:sport_id])
    @team.sport = @sport

    @team.save
    
    redirect_to team_path(@team)
  end 

  def show
    @team = Team.find(params[:id])
    @game = Game.new
    @games = @team.games
  end 

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    redirect_to current_user
  end

  private
  def team_params
    params.require(:team).permit(:name, :roster => [], :sport => [])
  end
end
