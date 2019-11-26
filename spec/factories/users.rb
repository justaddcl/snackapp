FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    password { Faker::Internet.password(min_length: 8, max_length: 20) }
    sequence(:email) { |n|
      name = "#{Faker::Name.first_name}#{n}" # Ensures uniqueness
      Faker::Internet.safe_email(name: name)
    }
    admin { false }

    trait :admin do
      admin { true }
    end
  end
end
