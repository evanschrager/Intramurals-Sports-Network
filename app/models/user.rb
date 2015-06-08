class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts
  has_many :user_teams
  has_many :teams, through: :user_teams
  has_many :games, through: :teams

  has_many :post_games
  has_many :games, through: :post_games
end
