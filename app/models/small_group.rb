class SmallGroup < ApplicationRecord
  belongs_to :discipleship_community, foreign_key: "discipleship_community_id"
  belongs_to :user_role, foreign_key: "user_role_id"
  has_one :user_role
  has_many :events, as: :gatherable
end
