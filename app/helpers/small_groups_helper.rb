# frozen_string_literal: true

module SmallGroupsHelper
  # returns the abbreviated version of an array of days of the week
  def abbr_nights(nights)
    nights.map(&:to_date)
  end

  # returns an array of nights where there is a discipleship community
  def get_active_nights
    active_nights = DiscipleshipCommunity.nights.keys.filter do |n|
      DiscipleshipCommunity
        .where(night: DiscipleshipCommunity.nights[n])
        .count
        .positive?
    end
    abbr_nights(active_nights)
  end

  def is_day_of_the_week?(day)
    (Date::DAYNAMES.include?(day.capitalize) || \
    Date::ABBR_DAYNAMES.include?(day.capitalize))
  end
end
