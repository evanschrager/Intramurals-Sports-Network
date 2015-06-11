class TeamsController < ApplicationController
  
  def edit
    @team = Team.where(:hex_id => params[:team_id][:id]).first
    @user = User.find(params[:id])
    if !@team.users.include?(@user)
      @team.users << @user
      @team.roster_emails << @user.email
      @team.save
      redirect_to team_path(@team) 
    else
      redirect_to user_path(@user) 
    end
  end

  def new
    @team = Team.new
    @user = current_user
  end

  def create

    # @user = User.find(params[:team][:user_id].to_i)
    @user = current_user
    @team = Team.create(name: params[:team][:name])
    @team.hex_id = @team.random_id

    @user.teams << @team

    # params[:team][:roster] << @user.email
    @team.roster_emails << params[:team][:roster]
    @team.roster_emails.flatten!

    @sport = Sport.find(params[:team][:sport_id])
    @team.sport = @sport

    @team.save

    # Send email to all emails included in roster in team creation
    @team.roster_emails.each do |email_address|
      UserMailer.roster_email(email_address).deliver_now
    end
    
    redirect_to team_path(@team)
  end 

  def show
    @team = Team.find(params[:id])
    @game = Game.new
    @games = @team.games
  end 

  def destroy
    @team = Team.find(params[:id])
    @team.games.each do |game|
      game.posts.each do |post|
        post.destroy
      end
      game.destroy
    end
    @team.destroy
    redirect_to current_user
  end

  private
  def team_params
    params.require(:team).permit(:name, :roster => [], :sport => [])
  end
end
