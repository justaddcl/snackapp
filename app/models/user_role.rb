# frozen_string_literal: true

class UserRole < ApplicationRecord
  belongs_to :small_group, optional: true
  belongs_to :user

  validates :type, presence: true

  self.inheritance_column = nil

  enum type: {
    discipleship_community_pastor: 'discipleship_community_pastor',
    discipleship_community_coordinator: 'discipleship_community_coordinator',
    small_group_leader: 'small_group_leader',
    small_group_coordinator: 'small_group_coordinator',
    small_group_member: 'small_group_member'
  }
end
