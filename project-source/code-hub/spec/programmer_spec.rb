#./spec/models/programmer_spec.rb
require "rails_helper"
RSpec.describe Programmer, :type => :model do
  
  before(:all) do
    @programmer1 = build_stubbed(:programmer)
  end

  it "need to belongs to a user" do
    expect(@programmer1.user).to be_valid
  end

  it "is not valid without a owner user_id" do 
    expect(@programmer1.user_id).to be_kind_of(Integer)
  end

  it "has a unique owner user_id" do 
    programmer2 = build(:programmer, user_id: 1)
    expect(programmer2).to_not be_valid
  end

  it "is not valid without a name" do 
    expect(@programmer1.name).to be_kind_of(String)
  end
  
  it "is not valid without a description" do 
    expect(@programmer1.description).to be_kind_of(String)
  end
  
  it "is not valid without a language" do
    expect(@programmer1.language).to be_kind_of(String)
  end

  it "is not valid without an expertise level between 1 and 5" do
    expect(@programmer1.expertise_lvl).to be_kind_of(Integer)
    expect(@programmer1.expertise_lvl).to be <= 5
    expect(@programmer1.expertise_lvl).to be >= 1
  end

  it "has many contracts associated to it" do
    expect(create(:programmer_with_contract).contracts.length).to be == 3
  end

end