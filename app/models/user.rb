class User < ApplicationRecord
  has_many :assignments
  has_many :discipleship_communities
  has_many :small_groups
  has_many :user_roles
end
