require "application_system_test_case"

class BuyerLocationsTest < ApplicationSystemTestCase
  setup do
    @buyer_location = buyer_locations(:one)
  end

  test "visiting the index" do
    visit buyer_locations_url
    assert_selector "h1", text: "Buyer locations"
  end

  test "should create buyer location" do
    visit buyer_locations_url
    click_on "New buyer location"

    check "Active" if @buyer_location.active
    fill_in "Buyer", with: @buyer_location.buyer_id
    fill_in "Location", with: @buyer_location.location_id
    click_on "Create Buyer location"

    assert_text "Buyer location was successfully created"
    click_on "Back"
  end

  test "should update Buyer location" do
    visit buyer_location_url(@buyer_location)
    click_on "Edit this buyer location", match: :first

    check "Active" if @buyer_location.active
    fill_in "Buyer", with: @buyer_location.buyer_id
    fill_in "Location", with: @buyer_location.location_id
    click_on "Update Buyer location"

    assert_text "Buyer location was successfully updated"
    click_on "Back"
  end

  test "should destroy Buyer location" do
    visit buyer_location_url(@buyer_location)
    click_on "Destroy this buyer location", match: :first

    assert_text "Buyer location was successfully destroyed"
  end
end
