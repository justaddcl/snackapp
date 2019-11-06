class DiscipleshipCommunity < ApplicationRecord
  belongs_to :pastor, class_name: "User", foreign_key: "pastor_id"
  has_many :events, as: :gatherable
  has_many :small_groups
end
