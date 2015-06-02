class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :event
  has_one :league, through: :event
  has_one :sport, through: :league
  has_one :team, through: :user
end
