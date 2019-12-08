FactoryBot.define do
  factory :discipleship_community do
    association :pastor, factory: [:user, :admin]
    night { DiscipleshipCommunity.nights.values.sample }
  end
end
