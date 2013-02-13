class Visit < ActiveRecord::Base
  attr_accessible :dish_id, :note, :rating, :restaurant_id, :user_id
end
