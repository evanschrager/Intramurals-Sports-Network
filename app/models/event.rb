class Event < ActiveRecord::Base
  belongs_to :league

  has_one :sport, through: :league
  has_many :teams, through: :league
  has_many :users, through: :teams
  has_many :posts, through: :users
end
