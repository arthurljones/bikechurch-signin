# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :bike do
    person { Person.first or create(:person) }
    bike_type { BikeType.first or create(:bike_type) }
    color "Red"
    brand "Miyata"
    model "710"
    serial "1234567ABC"
  end
end
