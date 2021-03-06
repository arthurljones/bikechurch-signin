class BikeType < ActiveRecord::Base
  attr_accessible :name

  has_many :bikes

  validates_presence_of :name
  validates_uniqueness_of :name
end
