class UserRole < ApplicationRecord
  belongs_to :role, foreign_key: "role_id"
  belongs_to :user, foreign_key: "user_id"
  has_one :small_group, foreign_key: "small_group_id"
end
