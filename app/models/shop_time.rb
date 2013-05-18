class ShopTime < ActiveRecord::Base
  attr_accessible :start_time, :end_time, :notes, :person_id, :type
end
