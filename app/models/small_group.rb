class SmallGroup < ApplicationRecord
  belongs_to :discipleship_community, foreign_key: "discipleship_community_id"
  belongs_to :leader, class_name: "User", foreign_key: "leader_id"
  has_many :user_roles
  has_many :events, as: :gatherable
end
