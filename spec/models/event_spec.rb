require 'rails_helper'

RSpec.describe Event, type: :model do
  it "should have valid factories" do
    expect(build(:event)).not_to be_valid
    expect(build(:event, :small_group)).to be_valid
    expect(build(:event, :discipleship_community)).to be_valid
  end
end
