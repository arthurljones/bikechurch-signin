class ShopTime < ActiveRecord::Base
  attr_accessible :person, :started, :ended, :purpose, :notes
  attr_accessible :person_id
  
  belongs_to :person

  validates_presence_of :person
  validates_presence_of :purpose
  validates_datetime :started
end
