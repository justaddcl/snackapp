FactoryBot.define do
  factory :event do
    description { Faker::Lorem.paragraph }
    date { Faker::Date.between(from: 1.days.from_now, to: 10.days.from_now) }
    type { Event.types.values.sample }

    trait :small_group do
      association :gatherable, factory: :small_group
    end

    trait :discipleship_community do
      association :gatherable, factory: :discipleship_community
    end
  end
end
