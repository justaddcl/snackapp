FactoryBot.define do
  factory :small_group do
    association :leader, factory: [:user, :admin]
    association :discipleship_community, factory: :discipleship_community
  end
end
