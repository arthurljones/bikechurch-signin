class Visit < ActiveRecord::Base
  attr_accessible :person, :purpose :started, :ended, :notes
  attr_accessible :person_id, :purpose_id
  
  belongs_to :person
  belongs_to :purpose

  validates_presence_of :person
  validates_presence_of :purpose
  validates_datetime :started
end
