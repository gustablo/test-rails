require "test_helper"

class FloatersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @floater = floaters(:one)
  end

  test "should get index" do
    get floaters_url
    assert_response :success
  end

  test "should get new" do
    get new_floater_url
    assert_response :success
  end

  test "should create floater" do
    assert_difference("Floater.count") do
      post floaters_url, params: { floater: { amount: @floater.amount } }
    end

    assert_redirected_to floater_url(Floater.last)
  end

  test "should show floater" do
    get floater_url(@floater)
    assert_response :success
  end

  test "should get edit" do
    get edit_floater_url(@floater)
    assert_response :success
  end

  test "should update floater" do
    patch floater_url(@floater), params: { floater: { amount: @floater.amount } }
    assert_redirected_to floater_url(@floater)
  end

  test "should destroy floater" do
    assert_difference("Floater.count", -1) do
      delete floater_url(@floater)
    end

    assert_redirected_to floaters_url
  end
end
