class ShopTime < ActiveRecord::Base
  attr_accessible :end, :notes, :person_id, :start, :type
end
