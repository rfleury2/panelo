FactoryGirl.define do
  factory :contest do
    title Faker::Company.bs
    category Faker::Company.name
  end
end