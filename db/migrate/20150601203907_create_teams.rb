class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.text :roster_emails, array: true, default: []
      t.timestamps null: false
    end
  end
end
