class User < ActiveRecord::Base
  attr_accessible :name

  has_many :visits
  has_many :restaurants, :through => :visits
  has_many :dishes, :through => :visits
end
