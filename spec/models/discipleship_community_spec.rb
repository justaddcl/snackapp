require 'rails_helper'

RSpec.describe DiscipleshipCommunity, type: :model do
  it "should have valid factories" do
    expect(build(:discipleship_community)).to be_valid
  end
end
