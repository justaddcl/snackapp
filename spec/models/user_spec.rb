require 'rails_helper'

RSpec.describe User, type: :model do

  it { should have_secure_password }

  describe 'associations' do
    it { should have_many(:assignments) }
    it { should have_many(:user_roles) }
  end

  describe 'validations' do
    subject { build(:user) }
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email).case_insensitive }
    it { should validate_length_of(:password).is_at_least(8).on(:create) }
    subject { build(:user, password: nil)}
    it { should validate_presence_of(:password) }
  end

  it "should have valid factories" do
    expect(build(:user)).to be_valid
    expect(build(:user, :admin)).to be_valid
  end

end
