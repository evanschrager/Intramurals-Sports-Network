class Sport < ActiveRecord::Base
 
  has_many :teams

  has_many :users, through: :teams
  has_many :posts, through: :users # ?
  
end
