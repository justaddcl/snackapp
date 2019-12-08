FactoryBot.define do

  factory :event do
    description { Faker::Lorem.paragraph }
    date { Faker::Date.between(from: 1.days.from_now, to: 10.days.from_now) }
    start_time { Faker::Time.forward(days: 7, period: :afternoon) }
    type { Event.types.values.sample }

    trait :for_small_group do
      association :gatherable, factory: :small_group
    end

    trait :for_discipleship_community do
      association :gatherable, factory: :discipleship_community
    end
  end
end
