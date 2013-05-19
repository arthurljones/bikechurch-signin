class Person < ActiveRecord::Base
  attr_accessible :first_name, :last_name

  validates_uniqueness_of :first_name, :last_name

  has_many :bikes, :counter_cache => true, :dependent => :destroy
  has_many :visits, :dependent => :destroy
  has_one :membership, :dependent => :destroy
  has_one :occupant, :dependent => :destroy
end
