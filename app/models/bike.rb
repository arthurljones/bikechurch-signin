class Bike < ActiveRecord::Base
  attr_accessible :brand, :color, :model, :person_id, :serial, :type
end
