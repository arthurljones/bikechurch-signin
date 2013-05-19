class Bike < ActiveRecord::Base
  attr_accessible :owner, :brand, :color, :model, :serial, :type
  attr_accessible :owner_id
  belongs_to :owner, :class_name => "Person", :foreign_key => :owner_id
end
