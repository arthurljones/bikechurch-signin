class BikeType < ActiveRecord::Base
  attr_accessible :name

  has_many :bikes

  validates_presence_of :name
end
