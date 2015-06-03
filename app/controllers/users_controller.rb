class UsersController < ApplicationController

  def index
    @user = User.new
    @team = Team.new
  end 

  def create
    @user = User.create(user_params)
    redirect_to user_path(@user)
  end 

  def show
    @user = User.find(params[:id])
    @team = Team.new
  end 

  private
  def user_params
    params.require(:user).permit(:name, :age, :email, :height, :weight, :bio, :teams)
  end
end
