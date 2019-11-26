require 'rails_helper'

RSpec.describe User, type: :model do

  before(:all) do
    #user1 = build(:user)
  end

  it "should have valid factories" do
    expect(build(:user)).to be_valid
    expect(build(:user, :admin)).to be_valid
  end

  it "is not valid without a first name" do
    user = build(:user, first_name: nil)
    expect(user).to_not be_valid
  end

  it "is not valid without a last name" do
    user = build(:user, last_name: nil)
    expect(user).to_not be_valid
  end

  it "is not valid without an email" do
    user = build(:user, email: nil)
    expect(user).to_not be_valid
  end

  it "must have a unique email" do
    user1 = create(:user, email: 'example@site.com')
    user2 = build(:user, email: 'example@site.com')
    expect(user2).to_not be_valid
  end

  it "is not valid without a password" do
    user = build(:user, password: nil)
    expect(user).to_not be_valid
  end

  it "is not valid without a password of at least 8 characters " do
    user = build(:user, password: 'a')
    expect(user).to_not be_valid
  end

end
