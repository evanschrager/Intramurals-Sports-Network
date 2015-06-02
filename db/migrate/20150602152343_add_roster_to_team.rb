class AddRosterToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :roster, :text, array: true, default: []
  end
end
