# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :visit do
    person { Person.first or create(:person) }
    start_time { 2.hours.ago }
  end
end
