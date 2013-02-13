# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


users = [
  { :name => "raghu" },
  { :name => "jeff" },
  { :name => "arjun" },
  { :name => "pam" },
  { :name => "tasha" },
  { :name => "michael" },
  { :name => "ty" },
  { :name => "chris" },
  { :name => "ankur" },
  { :name => "will" }
]
User.destroy_all
User.create users

dishes = [
  { :name => "cheeseburger" },
  { :name => "unagi" },
  { :name => "pad thai" },
  { :name => "caesar salad" }
]
Dish.destroy_all
Dish.create dishes

restaurants = [
  { :name => "Dillon's Deli" },
  { :name => "Matt's Market" },
  { :name => "Amanda's Cafe" }
]
Restaurant.destroy_all
Restaurant.create restaurants

100.times do |i|
  u = User.offset(rand(User.count)).first
  d = Dish.offset(rand(Dish.count)).first
  r = Restaurant.offset(rand(Restaurant.count)).first
  v = Visit.new
  v.user_id = u.id
  v.dish_id = d.id
  v.restaurant_id = restaurant.id
  v.rating = rand(1..5)
  v.save
 end
