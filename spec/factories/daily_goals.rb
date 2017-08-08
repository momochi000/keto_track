FactoryGirl.define do
  factory :daily_goal do
    association :user
    carbs { rand(10.0..40) }
    fat { rand(90..300) }
    protein { rand(40..230) }
  end
end
