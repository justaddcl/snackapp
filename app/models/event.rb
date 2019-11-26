class Event < ApplicationRecord
  belongs_to :gatherable, polymorphic: true
  has_many :assignments

  validates :description, :date, presence: true
  validate :date_is_in_the_future?, if: :new_record?

  def date_is_in_the_future?
    return if date >= Date.today
    errors.add(:date, "can't be before today")
  end

  self.inheritance_column = nil
  enum type: {
    small_group: "small_group",
    discipleship_community: "discipleship_community",
    party: "party",
    other: "other",
  }
end
