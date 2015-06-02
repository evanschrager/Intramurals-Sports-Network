class AddTeamsToUser < ActiveRecord::Migration
  def change
    add_column :users, :teams, :text, array: true, default: []
  end
end
