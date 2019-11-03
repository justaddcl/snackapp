class DiscipleshipCommunity < ApplicationRecord
  belongs_to :user, foreign_key: "user_id"
  has_many :events, as: :gatherable
  has_many :small_groups
end
