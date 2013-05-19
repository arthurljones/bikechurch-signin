# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :membership do
    person { Person.first or create(:person) }
    start_date { Time.zone.now }
    end_date { 1.month.from_now }
  end
end
