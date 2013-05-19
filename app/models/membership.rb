class Membership < ActiveRecord::Base
  attr_accessible :person, :start_date, :end_date, :email_address, :mail_address, :phone_number, :donation, :notes
  attr_accessible :person_id
  belongs_to :person
end
