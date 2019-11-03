class SmallGroup < ApplicationRecord
  belongs_to :discipleship_community, foreign_key: "discipleship_community_id"
  belongs_to :user, foreign_key: "user_id"
  has_many :user_roles
  has_many :events, as: :gatherable
end
