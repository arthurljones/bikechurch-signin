class Feedback < ActiveRecord::Base
  attr_accessible :feedback, :name

  validates_presence_of :feedback
end
