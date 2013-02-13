class Restaurant < ActiveRecord::Base
  attr_accessible :name, :zip

  has_many :visits
  has_many :users, :through => :visits
  has_many :dishes, :through => :visits
end
