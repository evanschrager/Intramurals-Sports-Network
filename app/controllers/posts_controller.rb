class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def create
    @game = Game.where(:game_info => params[:posts_attending][:game_info])
    @user = current_user
    @user.games << @game
    redirect_to current_user
  end
end
