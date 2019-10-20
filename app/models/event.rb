class Event < ApplicationRecord
  belongs_to :gatherable, polymorphic: true
end
