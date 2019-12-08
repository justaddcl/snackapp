require 'rails_helper'

RSpec.describe UserRole, type: :model do
  describe 'associations' do
    it { should belong_to(:small_group).optional }
    it { should belong_to(:user) }
  end

  describe 'validations' do
    it { should validate_presence_of(:type) }
  end

  it "should have valid factories" do
    expect(build(:user_role)).to be_valid
    expect(build(:user_role, :with_small_group)).to be_valid
  end
end
