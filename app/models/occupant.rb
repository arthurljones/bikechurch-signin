class Occupant < ActiveRecord::Base
  attr_accessible :person, :purpose
  attr_accessible :person_id
  belongs_to :person

  accepts_nested_attributes_for :person
  attr_accessible :person_attributes
end
