class Bike < ActiveRecord::Base
  attr_accessible :owner, :bike_type, :brand, :color, :model, :serial
  attr_accessible :owner_id, :bike_type_id

  belongs_to :owner, :class_name => "Person", :foreign_key => :owner_id
  belongs_to :bike_type

  validates_presence_of :owner
  validates_presence_of :bike_type
  validates_presence_of :brand
  validates_presence_of :color
  validates_presenceSof :model
  validates_presence_of :serial
end
