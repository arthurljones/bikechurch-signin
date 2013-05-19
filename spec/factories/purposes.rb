# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :purpose do
    sequence :name, "Work on a Bike"
  end
end
