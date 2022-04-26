require "application_system_test_case"

class RoastersTest < ApplicationSystemTestCase
  setup do
    @roaster = roasters(:one)
  end

  test "visiting the index" do
    visit roasters_url
    assert_selector "h1", text: "Roasters"
  end

  test "should create roaster" do
    visit roasters_url
    click_on "New roaster"

    fill_in "Address", with: @roaster.address
    fill_in "Name", with: @roaster.name
    click_on "Create Roaster"

    assert_text "Roaster was successfully created"
    click_on "Back"
  end

  test "should update Roaster" do
    visit roaster_url(@roaster)
    click_on "Edit this roaster", match: :first

    fill_in "Address", with: @roaster.address
    fill_in "Name", with: @roaster.name
    click_on "Update Roaster"

    assert_text "Roaster was successfully updated"
    click_on "Back"
  end

  test "should destroy Roaster" do
    visit roaster_url(@roaster)
    click_on "Destroy this roaster", match: :first

    assert_text "Roaster was successfully destroyed"
  end
end
