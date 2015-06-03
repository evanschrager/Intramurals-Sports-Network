class Team < ActiveRecord::Base

  belongs_to :sport
  has_many :games
  
  has_many :user_teams
  has_many :users, through: :user_teams
  has_many :posts, through: :users
end
