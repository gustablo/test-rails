require "application_system_test_case"

class DateersTest < ApplicationSystemTestCase
  setup do
    @dateer = dateers(:one)
  end

  test "visiting the index" do
    visit dateers_url
    assert_selector "h1", text: "Dateers"
  end

  test "should create dateer" do
    visit dateers_url
    click_on "New dateer"

    fill_in "Data", with: @dateer.data
    click_on "Create Dateer"

    assert_text "Dateer was successfully created"
    click_on "Back"
  end

  test "should update Dateer" do
    visit dateer_url(@dateer)
    click_on "Edit this dateer", match: :first

    fill_in "Data", with: @dateer.data
    click_on "Update Dateer"

    assert_text "Dateer was successfully updated"
    click_on "Back"
  end

  test "should destroy Dateer" do
    visit dateer_url(@dateer)
    click_on "Destroy this dateer", match: :first

    assert_text "Dateer was successfully destroyed"
  end
end
