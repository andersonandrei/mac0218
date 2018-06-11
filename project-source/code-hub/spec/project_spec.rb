#./spec/models/project_spec.rb
require "rails_helper"
RSpec.describe Project, :type => :model do
  
  before(:all) do
    @project1 = build_stubbed(:project)
  end

  it "is not valid without a owner user_id" do 
    expect(@project1.user_id).to be_kind_of(Integer)
  end

  it "is not valid without a name" do 
    expect(@project1.name).to be_kind_of(String)
  end
  
  it "is not valid without a description" do 
    expect(@project1.description).to be_kind_of(String)
  end
  
  it "is not valid without a language" do
    expect(@project1.language).to be_kind_of(String)
  end

  it "is not valid without a duration" do
    expect(@project1.duration).to be_kind_of(String)
  end

  it "has many contracts associated to it" do
    expect(create(:project_with_contract).contracts.length).to be == 3
  end

end