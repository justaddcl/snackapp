class DiscipleshipCommunity < ApplicationRecord
  has_many :events, as: :gatherable
end
