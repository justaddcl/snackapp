# frozen_string_literal: true

class SmallGroup < ApplicationRecord
  belongs_to :discipleship_community
  belongs_to :leader, class_name: 'User'
  has_many :user_roles
  has_many :events, as: :gatherable

  # returns group night
  def night
    discipleship_community.night
  end

  # returns the group's coordinator
  def coordinator
    User.where(user_roles: UserRole.where(small_group_id: id, type: :small_group_coordinator))[0]
  end

  # returns the members of the small group
  def members
    User.where(user_roles: user_roles)
  end
end
