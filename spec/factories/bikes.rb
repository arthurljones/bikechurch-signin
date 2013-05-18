# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :bike do
    person_id 1
    type ""
    color "MyString"
    brand "MyString"
    model "MyString"
    serial "MyString"
  end
end
