class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def create
    @game = Game.where(:game_info => params[:posts_attending][:game_info])
    @user = current_user
    @post = Post.where(:title => params[:posts_attending][:game_info])
    Post.destroy(@post)

    if @user.games_not_attending.include?(@game[0].id.to_s)
      @user.games_not_attending.delete(@game[0].id.to_s)
    end 
    @user.games << @game
    @user.save
    redirect_to current_user
  end
end
