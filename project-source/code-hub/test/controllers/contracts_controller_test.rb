require 'test_helper'

class ContractsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contract = contracts(:one)
  end

  test "should get index" do
    get contracts_url
    assert_response :success
  end

  test "should get new" do
    get new_contract_url
    assert_response :success
  end

  test "should create contract" do
    assert_difference('Contract.count') do
      post contracts_url, params: { contract: { belongs_to: @contract.belongs_to, belongs_to: @contract.belongs_to, contract_description: @contract.contract_description, contract_duration: @contract.contract_duration, contract_type: @contract.contract_type, is_active: @contract.is_active, payment: @contract.payment, start_date: @contract.start_date, status: @contract.status } }
    end

    assert_redirected_to contract_url(Contract.last)
  end

  test "should show contract" do
    get contract_url(@contract)
    assert_response :success
  end

  test "should get edit" do
    get edit_contract_url(@contract)
    assert_response :success
  end

  test "should update contract" do
    patch contract_url(@contract), params: { contract: { belongs_to: @contract.belongs_to, belongs_to: @contract.belongs_to, contract_description: @contract.contract_description, contract_duration: @contract.contract_duration, contract_type: @contract.contract_type, is_active: @contract.is_active, payment: @contract.payment, start_date: @contract.start_date, status: @contract.status } }
    assert_redirected_to contract_url(@contract)
  end

  test "should destroy contract" do
    assert_difference('Contract.count', -1) do
      delete contract_url(@contract)
    end

    assert_redirected_to contracts_url
  end
end
