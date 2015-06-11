class AddHexIdToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :hex_id, :string
  end
end
