class Event < ApplicationRecord
  belongs_to :event_type, foreign_key: "event_type_id"
  belongs_to :gatherable, polymorphic: true
  has_many :assignments

  validates :description, :date, presence: true
  # validates :date_is_in_the_future?
  # validates :date_is_in_the_future?, if: :new_record?

  def date_is_in_the_future?
    date < Date.today
    # errors.add(:date, "can't be in the past") if date < Date.today
  end
end
