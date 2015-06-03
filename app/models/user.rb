class User < ActiveRecord::Base
  has_many :posts

  has_many :teams, through: :user_teams
  has_many :user_teams

  serialize :teams
end
