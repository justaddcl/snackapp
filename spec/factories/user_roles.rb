FactoryBot.define do
  factory :user_role do
    association :small_group, factory: :small_group
    association :user, factory: :user

    type { UserRole.types.values.sample }
  end
end
