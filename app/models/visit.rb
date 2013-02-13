class Visit < ActiveRecord::Base
  attr_accessible :dish_id, :note, :rating, :restaurant_id, :user_id

  belongs_to :user
  belongs_to :restaurant
  belongs_to :dish

  validates_presence_of :user, :restaurant, :dish
end
