require "application_system_test_case"

class LeadsTest < ApplicationSystemTestCase
  setup do
    @lead = leads(:one)
  end

  test "visiting the index" do
    visit leads_url
    assert_selector "h1", text: "Leads"
  end

  test "should create lead" do
    visit leads_url
    click_on "New lead"

    fill_in "City", with: @lead.city
    fill_in "Email", with: @lead.email
    fill_in "First name", with: @lead.first_name
    fill_in "Last name", with: @lead.last_name
    fill_in "Phone number", with: @lead.phone_number
    fill_in "Service", with: @lead.service_id
    check "Sold" if @lead.sold
    fill_in "State code", with: @lead.state_code
    fill_in "Street address", with: @lead.street_address
    fill_in "Zip code", with: @lead.zip_code
    click_on "Create Lead"

    assert_text "Lead was successfully created"
    click_on "Back"
  end

  test "should update Lead" do
    visit lead_url(@lead)
    click_on "Edit this lead", match: :first

    fill_in "City", with: @lead.city
    fill_in "Email", with: @lead.email
    fill_in "First name", with: @lead.first_name
    fill_in "Last name", with: @lead.last_name
    fill_in "Phone number", with: @lead.phone_number
    fill_in "Service", with: @lead.service_id
    check "Sold" if @lead.sold
    fill_in "State code", with: @lead.state_code
    fill_in "Street address", with: @lead.street_address
    fill_in "Zip code", with: @lead.zip_code
    click_on "Update Lead"

    assert_text "Lead was successfully updated"
    click_on "Back"
  end

  test "should destroy Lead" do
    visit lead_url(@lead)
    click_on "Destroy this lead", match: :first

    assert_text "Lead was successfully destroyed"
  end
end
