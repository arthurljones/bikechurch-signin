# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :member do
    person_id 1
    start_date "2013-05-18"
    end_date "2013-05-18"
    mail_address "MyString"
    email_address "MyString"
    phone_number "MyString"
    donation 1
    notes "MyText"
  end
end
