class Dog < ActiveRecord::Base
  validates_presence_of :name

  has_many :dogcollections
  has_many :owners, :through=>:dogcollections
end
