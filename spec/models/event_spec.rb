require 'rails_helper'

RSpec.describe Event, type: :model do

  it "should allow for new events" do
    event_type = EventType.create(
      description: "This is an event",
    )
    gatherable = DiscipleshipCommunity.create(

      SmallGroup.
    )
    expect(
      Event.new(
        event_type: event_type,

      )
    )

  end
end
