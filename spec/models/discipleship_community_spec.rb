require 'rails_helper'

RSpec.describe DiscipleshipCommunity, type: :model do
  subject { build(:discipleship_community) }
  describe 'associations' do
    it { should belong_to(:pastor) }
    it { should have_many(:events) }
    it { should have_many(:small_groups) }
  end

  describe 'validations' do
    it { should validate_presence_of(:night) }
  end

  before(:each) do
    @dc = build(:discipleship_community)
  end

  it "should have valid factories" do
    expect(@dc).to be_valid
  end
end
