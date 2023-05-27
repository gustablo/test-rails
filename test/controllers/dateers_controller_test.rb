require "test_helper"

class DateersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dateer = dateers(:one)
  end

  test "should get index" do
    get dateers_url
    assert_response :success
  end

  test "should get new" do
    get new_dateer_url
    assert_response :success
  end

  test "should create dateer" do
    assert_difference("Dateer.count") do
      post dateers_url, params: { dateer: { data: @dateer.data } }
    end

    assert_redirected_to dateer_url(Dateer.last)
  end

  test "should show dateer" do
    get dateer_url(@dateer)
    assert_response :success
  end

  test "should get edit" do
    get edit_dateer_url(@dateer)
    assert_response :success
  end

  test "should update dateer" do
    patch dateer_url(@dateer), params: { dateer: { data: @dateer.data } }
    assert_redirected_to dateer_url(@dateer)
  end

  test "should destroy dateer" do
    assert_difference("Dateer.count", -1) do
      delete dateer_url(@dateer)
    end

    assert_redirected_to dateers_url
  end
end
