class Occupant < ActiveRecord::Base
  attr_accessible :person, :purpose
  attr_accessible :person_id, :purpose_id
  
  belongs_to :person
  belongs_to :purpose

  accepts_nested_attributes_for :person
  attr_accessible :person_attributes

  validates_presence_of :person
  validates_uniqueness_of :person
  validates_presence_of :purpose
end
