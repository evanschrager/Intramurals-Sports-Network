class Sport < ActiveRecord::Base
  has_many :leagues

  has_many :events, through: :leagues
  has_many :teams, through: :leagues
  has_many :users, through: :teams
  has_many :posts, through: :users # ?
  
end
