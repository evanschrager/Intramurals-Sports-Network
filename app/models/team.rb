require 'securerandom'
class Team < ActiveRecord::Base

  has_many :games
  belongs_to :sport
  
  
  has_many :user_teams
  has_many :users, through: :user_teams
  has_many :posts, through: :users

  def random_id
    array = Team.all.map {|team| team.hex_id}
    code = SecureRandom.hex[0..3]
    while array.include?(code)
      code = SecureRandom.hex[0..3]
    end
    code
  end

end
