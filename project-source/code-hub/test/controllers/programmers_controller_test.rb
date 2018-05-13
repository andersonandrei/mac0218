require 'test_helper'

class ProgrammersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @programmer = programmers(:one)
  end

  test "should get index" do
    get programmers_url
    assert_response :success
  end

  test "should get new" do
    get new_programmer_url
    assert_response :success
  end

  test "should create programmer" do
    assert_difference('Programmer.count') do
      post programmers_url, params: { programmer: { description: @programmer.description, expertise_lvl: @programmer.expertise_lvl, language: @programmer.language, name: @programmer.name } }
    end

    assert_redirected_to programmer_url(Programmer.last)
  end

  test "should show programmer" do
    get programmer_url(@programmer)
    assert_response :success
  end

  test "should get edit" do
    get edit_programmer_url(@programmer)
    assert_response :success
  end

  test "should update programmer" do
    patch programmer_url(@programmer), params: { programmer: { description: @programmer.description, expertise_lvl: @programmer.expertise_lvl, language: @programmer.language, name: @programmer.name } }
    assert_redirected_to programmer_url(@programmer)
  end

  test "should destroy programmer" do
    assert_difference('Programmer.count', -1) do
      delete programmer_url(@programmer)
    end

    assert_redirected_to programmers_url
  end
end
