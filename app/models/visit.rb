class ShopTime < ActiveRecord::Base
  attr_accessible :person, :started, :ended, :purpose, :notes
  attr_accessible :person_id
  
  belongs_to :person
end
