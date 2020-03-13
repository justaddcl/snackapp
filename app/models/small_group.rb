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
end
