# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :occupant do
    person { create(:person) }
    purpose { Purpose.first or create(:purpose) }
  end
end
