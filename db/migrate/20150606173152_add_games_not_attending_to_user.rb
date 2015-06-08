class AddGamesNotAttendingToUser < ActiveRecord::Migration
  def change
    add_column :users , :games_not_attending , :string ,array: true , default: []
  end
end
