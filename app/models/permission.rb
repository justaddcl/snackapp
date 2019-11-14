class Permission < ApplicationRecord
  has_many :user_roles
end
