FactoryBot.define do
  factory :discipleship_community do
    association :pastor, factory: [:user, :admin]
    night { ["Mo", "Tu", "We", "Th", "Fr", "Sa", "Su"].sample }
  end
end
