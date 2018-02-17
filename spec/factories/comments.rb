FactoryGirl.define do
  factory :comment do
    content { Faker::Lorem.paragraph }
    rating { Faker::Number.between(0, 5) }
    video
  end
end
