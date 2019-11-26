class DiscipleshipCommunity < ApplicationRecord
  belongs_to :pastor, class_name: "User"
  has_many :events, as: :gatherable
  has_many :small_groups
end
