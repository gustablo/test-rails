require "application_system_test_case"

class BooleansTest < ApplicationSystemTestCase
  setup do
    @boolean = booleans(:one)
  end

  test "visiting the index" do
    visit booleans_url
    assert_selector "h1", text: "Booleans"
  end

  test "should create boolean" do
    visit booleans_url
    click_on "New boolean"

    check "Fixed" if @boolean.fixed
    click_on "Create Boolean"

    assert_text "Boolean was successfully created"
    click_on "Back"
  end

  test "should update Boolean" do
    visit boolean_url(@boolean)
    click_on "Edit this boolean", match: :first

    check "Fixed" if @boolean.fixed
    click_on "Update Boolean"

    assert_text "Boolean was successfully updated"
    click_on "Back"
  end

  test "should destroy Boolean" do
    visit boolean_url(@boolean)
    click_on "Destroy this boolean", match: :first

    assert_text "Boolean was successfully destroyed"
  end
end
