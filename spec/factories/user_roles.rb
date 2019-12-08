FactoryBot.define do
  factory :user_role do
    association :user, factory: :user

    type { UserRole.types.values.sample }

    trait :with_small_group do
      association :small_group, factory: :small_group
    end
  end
end
