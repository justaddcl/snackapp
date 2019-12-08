require 'rails_helper'

RSpec.describe SmallGroup, type: :model do

  describe 'associations' do
    it { should belong_to(:discipleship_community) }
    it { should belong_to(:leader) }
    it { should have_many(:user_roles) }
    it { should have_many(:events) }
  end

  it "should have valid factories" do
    expect(build(:small_group)).to be_valid
  end

end
