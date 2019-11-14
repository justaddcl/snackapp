class UserRole < ApplicationRecord
  belongs_to :permission, foreign_key: "permission_id"
  belongs_to :role, foreign_key: "role_id"
  belongs_to :small_group, foreign_key: "small_group_id", optional: true
  belongs_to :user, foreign_key: "user_id"
end
