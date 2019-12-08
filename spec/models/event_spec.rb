require 'rails_helper'

RSpec.describe Event, type: :model do
  subject { build(:event, :for_small_group) }
  describe 'associations' do
    it { should belong_to(:gatherable) }
  end

  describe 'validations' do
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:date) }
    it { should validate_presence_of(:start_time).allow_nil }
    it { should validate_presence_of(:type) }
  end

  before(:each) do
    @event = build(:event)
    @small_group_event = build(:event, :for_small_group)
    @dc_event = build(:event, :for_discipleship_community)
  end

  it "should have valid factories" do
    expect(@event).not_to be_valid
    expect(@small_group_event).to be_valid
    expect(@dc_event).to be_valid
  end

end
