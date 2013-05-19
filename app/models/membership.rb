class Membership < ActiveRecord::Base
  attr_accessible :person, :start_date, :end_date, :email_address, :mail_address, :phone_number, :donation, :notes
  attr_accessible :person_id
  belongs_to :person

  validates_presence_of :person
  validates_uniqueness_of :person
  validates_date :start_date
  validates_date :end_date, :after => :start_date
end
