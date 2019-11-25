class UserRole < ApplicationRecord
  belongs_to :small_group, foreign_key: "small_group_id", optional: true
  belongs_to :user, foreign_key: "user_id"


  self.inheritance_column = nil
  enum type: {
    discipleship_community_pastor: 'discipleship_community_pastor',
    discipleship_community_coordinator: 'discipleship_community_coordinator',
    small_group_leader: 'small_group_leader',
    small_group_member: 'small_group_member',
    small_group_coordinato: 'small_group_coordinator'
  }
end