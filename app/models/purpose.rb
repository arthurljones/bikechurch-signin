class Purpose < ActiveRecord::Base
  attr_accessible :name

  has_many :visits
  has_many :occupants

  validates_presence_of :name
  validates_uniqueness_of :name
end
