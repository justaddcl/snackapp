class Event < ApplicationRecord
  belongs_to :event_type, foreign_key: "event_type_id"
  belongs_to :gatherable, polymorphic: true
  has_one :event_type, foreign_key: "event_type_id"
  has_many :assignments
end
