class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.text :note
      t.integer :rating
      t.integer :user_id
      t.integer :dish_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
