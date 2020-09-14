FactoryBot.define do
    factory :contact do
      firstName { Faker::Name.first_name }
      lastName { Faker::Name.first_name }
      twitterUsername { Faker::Twitter.screen_name }
    end
end