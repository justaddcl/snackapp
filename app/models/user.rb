class User < ApplicationRecord
  has_many :assignments
  has_many :user_roles
end
