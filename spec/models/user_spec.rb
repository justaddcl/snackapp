require 'rails_helper'

RSpec.describe User, type: :model do

  it "should have valid factories" do
    expect(build(:user)).to be_valid
    expect(build(:user, :admin)).to be_valid
  end

end
