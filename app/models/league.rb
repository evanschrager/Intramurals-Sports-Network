class League < ActiveRecord::Base
  belongs_to :sport
  has_many :teams
  has_many :events

  has_many :users, through: :teams
  has_many :posts, through: :users
end
