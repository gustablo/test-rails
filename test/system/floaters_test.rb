require "application_system_test_case"

class FloatersTest < ApplicationSystemTestCase
  setup do
    @floater = floaters(:one)
  end

  test "visiting the index" do
    visit floaters_url
    assert_selector "h1", text: "Floaters"
  end

  test "should create floater" do
    visit floaters_url
    click_on "New floater"

    fill_in "Amount", with: @floater.amount
    click_on "Create Floater"

    assert_text "Floater was successfully created"
    click_on "Back"
  end

  test "should update Floater" do
    visit floater_url(@floater)
    click_on "Edit this floater", match: :first

    fill_in "Amount", with: @floater.amount
    click_on "Update Floater"

    assert_text "Floater was successfully updated"
    click_on "Back"
  end

  test "should destroy Floater" do
    visit floater_url(@floater)
    click_on "Destroy this floater", match: :first

    assert_text "Floater was successfully destroyed"
  end
end
