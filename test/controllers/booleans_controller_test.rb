require "test_helper"

class BooleansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @boolean = booleans(:one)
  end

  test "should get index" do
    get booleans_url
    assert_response :success
  end

  test "should get new" do
    get new_boolean_url
    assert_response :success
  end

  test "should create boolean" do
    assert_difference("Boolean.count") do
      post booleans_url, params: { boolean: { fixed: @boolean.fixed } }
    end

    assert_redirected_to boolean_url(Boolean.last)
  end

  test "should show boolean" do
    get boolean_url(@boolean)
    assert_response :success
  end

  test "should get edit" do
    get edit_boolean_url(@boolean)
    assert_response :success
  end

  test "should update boolean" do
    patch boolean_url(@boolean), params: { boolean: { fixed: @boolean.fixed } }
    assert_redirected_to boolean_url(@boolean)
  end

  test "should destroy boolean" do
    assert_difference("Boolean.count", -1) do
      delete boolean_url(@boolean)
    end

    assert_redirected_to booleans_url
  end
end
