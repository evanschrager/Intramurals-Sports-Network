class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.string :height
      t.integer :weight
      t.float :rating
      t.text :bio

      t.timestamps null: false
    end
  end
end