class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :event_time

      t.timestamps null: false
    end
  end
end
