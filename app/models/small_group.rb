class SmallGroup < ApplicationRecord
  has_many :events, as: :gatherable
end
