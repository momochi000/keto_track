FactoryGirl.define do
  factory :meal do
    association :user   
    name { Faker::Food.dish }
    carbs { rand(0.0..4.0) }
    fat { rand(8.0..50.0) }
    protein { rand(2.0..30.0) }
  end
end
