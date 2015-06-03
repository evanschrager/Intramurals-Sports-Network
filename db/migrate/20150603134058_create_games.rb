class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :game_time
      t.string :game_date
      t.string :location
      t.string :game_info
      t.timestamps null: false
    end
  end
end
