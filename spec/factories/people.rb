# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :person do
    sequence :first_name, "John"
    sequence :last_name, "Smith"
  end
end
