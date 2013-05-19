class Bike < ActiveRecord::Base
  attr_accessible :owner, :kind, :brand, :color, :model, :serial
  attr_accessible :owner_id

  belongs_to :owner, :class_name => "Person", :foreign_key => :owner_id

  validates_presence_of :owner
  validates_presence_of :kind
  validates_presence_of :brand
  validates_presence_of :color
  validates_presenceSof :model
  validates_presence_of :serial
end
