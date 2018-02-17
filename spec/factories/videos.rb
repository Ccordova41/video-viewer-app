FactoryGirl.define do
  factory :video do
    title { Faker::Lorem.word }
    rating { Faker::Lorem.paragraph }
    youtube_video_id {Faker::Crypto.md5 }
  end
end
