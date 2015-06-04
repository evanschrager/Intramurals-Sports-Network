class Game < ActiveRecord::Base
  belongs_to :team
  has_many :posts
  has_many :users, through: :teams
  has_many :posts, through: :users

  extend SimpleCalendar
  has_calendar

  attr_accessor :roster

  # def initialize
  #   @roster = []
  # end 
end
