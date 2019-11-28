class DiscipleshipCommunity < ApplicationRecord
  belongs_to :pastor, class_name: "User"
  has_many :events, as: :gatherable
  has_many :small_groups

  validates :night, presence: true

  enum night: {
    monday: 'monday',
    tuesday: 'tuesday',
    wednesday: 'wednesday',
    thursday: 'thursday',
    friday: 'friday'
  }
end
