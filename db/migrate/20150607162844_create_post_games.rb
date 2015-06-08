class CreatePostGames < ActiveRecord::Migration
  def change
    create_table :post_games do |t|
      t.integer :user_id
      t.integer :game_id

      t.timestamps null: false
    end
  end
end
