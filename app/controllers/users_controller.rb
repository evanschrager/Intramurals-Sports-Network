class UsersController < ApplicationController

  def index
    redirect_to current_user
  end 

  def create
  end 

  def show
    @user = User.find(params[:id])
    # @game = Game.find(params[:id])
    @team = Team.new
    games = @user.teams.map do |team|
                team.games.map do |game|
                  game
                end 
             end 
    @games = games.flatten
    @games << @user.games
    @games = @games.flatten
    @games = @games.uniq
  end 

  def update
    @user = User.find(params[:id])
    @game = Game.where(:game_info => params[:games_not_attending][:game_info])
    @user.games_not_attending << @game[0].id
    @user.save

    @post = Post.create(:title => @game[0].game_info)
    @user.posts << @post
    @game[0].posts << @post
    redirect_to current_user
  end 
  # private
  # def user_params
  #   params.require(:user).permit(:user => [:name, :age, :height, :weight, :bio])
  # end
end
