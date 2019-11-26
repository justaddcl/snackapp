require 'rails_helper'

RSpec.describe SmallGroup, type: :model do
  it "should have valid factories" do
    expect(build(:small_group)).to be_valid
  end
end
