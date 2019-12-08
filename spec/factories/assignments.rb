FactoryBot.define do
  factory :assignment do
    association :event, factory: :event
    association :user, factory: :user
  end
end
