class Game < ActiveRecord::Base
  belongs_to :team
  has_many :posts
  has_many :users, through: :teams

  has_many :post_games
  has_many :users, through: :post_games

  extend SimpleCalendar
  has_calendar :attribute => :game_time

  attr_accessor :roster


end
