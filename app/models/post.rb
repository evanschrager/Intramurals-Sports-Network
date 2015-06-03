class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :game
  has_one :team, through: :user
end
