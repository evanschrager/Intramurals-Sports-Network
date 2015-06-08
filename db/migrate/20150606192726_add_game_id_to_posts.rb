class AddGameIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :game_id, :integer
  end
end
