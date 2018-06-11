#./spec/models/contract_spec.rb
require "rails_helper"
RSpec.describe Contract, :type => :model do
  
  before(:all) do
    @contract1 = build_stubbed(:contract)
  end

  it "need to belongs to a programmer" do
    expect(@contract1.programmer).to be_valid
  end

  it "need to belongs to a project" do
    expect(@contract1.project).to be_valid
  end

  it "is not valid without a owner programmer_id" do 
    expect(@contract1.programmer_id).to be_kind_of(Integer)
  end

  it "is not valid without a owner project_id" do 
    expect(@contract1.project_id).to be_kind_of(Integer)
  end

  it "is not valid without a type" do 
    expect(@contract1.contract_type).to be_kind_of(String)
  end

  it "is not valid without a duration" do 
    expect(@contract1.contract_duration).to be_kind_of(String)
  end
  
  it "is not valid without a description" do 
    expect(@contract1.contract_description).to be_kind_of(String)
  end
  
  it "is not valid without a payment greather than 0.0" do
    expect(@contract1.payment).to be > 0.0
  end

  it "is not valid without a status" do
    expect(@contract1.status).to be_kind_of(String)
  end

end