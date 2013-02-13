class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :zip
      t.string :name

      t.timestamps
    end
  end
end
