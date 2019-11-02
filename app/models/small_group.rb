class SmallGroup < ApplicationRecord
  belongs_to :user_role, foreign_key: "user_role_id"
  has_many :events, as: :gatherable
end
