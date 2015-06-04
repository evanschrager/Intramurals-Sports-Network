class UsersController < ApplicationController

  def index
    # @user = User.new
    # @team = Team.new
    redirect_to current_user
  end 

  def create
    # @user = User.create(user_params)
    # redirect_to user_path(@user)
  end 

  def show
    @user = User.find(params[:id])
    @team = Team.new
  end 

  # private
  # def user_params
  #   params.require(:user).permit(:user => [:name, :age, :height, :weight, :bio])
  # end
end
