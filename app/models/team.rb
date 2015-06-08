class Team < ActiveRecord::Base

  has_many :games
  belongs_to :sport
  
  
  has_many :user_teams
  has_many :users, through: :user_teams
  has_many :posts, through: :users
end
