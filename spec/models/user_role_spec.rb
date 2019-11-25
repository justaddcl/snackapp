require 'rails_helper'

RSpec.describe UserRole, type: :model do
  it "should have valid factories" do
    expect(build(:user_role)).to be_valid
    expect(build(:user_role, :with_small_group)).to be_valid
  end
end
