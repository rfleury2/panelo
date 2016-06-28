FactoryGirl.define do
  factory :game do
    association :player_1, factory: :player
    association :player_2, factory: :player
    winner 'player_1'
  end
end