class Dish < ActiveRecord::Base
  attr_accessible :name

  has_many :visits
  has_many :users, :through => :visits
  has_many :restaurants, :through => :visits
end
