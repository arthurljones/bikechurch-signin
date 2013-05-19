# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :bike_type do
    sequence :name, "Road Bike"
  end
end
