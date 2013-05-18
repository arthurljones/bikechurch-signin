class Member < ActiveRecord::Base
  attr_accessible :donation, :email_address, :end_date, :mail_address, :notes, :person_id, :phone_number, :start_date
end
