class User < ActiveRecord::Base
  has_many :posts

  has_many :teams, through: :user_teams
  has_many :leagues, through: :teams
  has_many :events, through: :leagues
end
