class PostsController < ApplicationController

  def index
    if params[:post] 
      if params[:post][:sport_id]
        posts = Post.all
        @posts = posts.select do |post|
          post.game.team.sport.id == params[:post][:sport_id].to_i
        end 
      else
        @posts = Post.all
      end 
    else
      @posts = Post.all
    end 
  end

  def create
    @game = Game.where(:game_info => params[:posts_attending][:game_info])
    @user = current_user
    @post = Post.where(:title => params[:posts_attending][:game_info])
    if @post.length > 1
      Post.destroy(@post[0].id)
    else
      Post.destroy(@post[0].id)
    end

    if @user.games_not_attending.include?(@game[0].id.to_s)
      @user.games_not_attending.delete(@game[0].id.to_s)
    end 
    @user.games << @game
    @user.save
    redirect_to current_user
  end
end
