# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :shop_time do
    person_id 1
    start_time "2013-05-18 11:06:16"
    end_time "2013-05-18 11:06:16"
    notes "MyText"
    type ""
  end
end