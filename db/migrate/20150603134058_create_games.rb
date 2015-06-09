class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.date :game_date
      t.string :location
      t.string :game_info
      t.timestamps null: false
    end
  end
end
