require 'rails_helper'

RSpec.describe Assignment, type: :model do

  describe 'associations' do
    it { should belong_to(:event) }
    it { should belong_to(:user) }
  end

  it "should have valid factories" do
    expect(build(:assignment)).to be_valid
  end

end
