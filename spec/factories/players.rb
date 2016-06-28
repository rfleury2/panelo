FactoryGirl.define do
  factory :player do
    rating 1000
    name Faker::Name.name
  end
end