class Team < ActiveRecord::Base
  attr_accessor :roster
  
  belongs_to :league
  has_one :sport, through: :league

  has_many :users, through: :user_teams
  has_many :events, through: :league
  has_many :posts, through: :users

end
