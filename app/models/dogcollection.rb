class Dogcollection < ActiveRecord::Base
  validates_numericality_of :owner_id, :only_integer=>true
  validates_numericality_of :dog_id, :only_integer=>true

  belongs_to :owner
  belongs_to :dog
end
