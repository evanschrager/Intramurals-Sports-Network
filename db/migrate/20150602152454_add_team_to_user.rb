class AddTeamToUser < ActiveRecord::Migration
  def change
    add_column :users, :team, :text, array: true, default: []
  end
end
