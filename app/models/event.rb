class Event < ApplicationRecord
  belongs_to :event_type, foreign_key: "event_type_id"
  belongs_to :gatherable, polymorphic: true
  has_many :assignments
  
  with_options presence: true do
    validates :description
    validates :date
  end
end
