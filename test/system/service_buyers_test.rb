require "application_system_test_case"

class ServiceBuyersTest < ApplicationSystemTestCase
  setup do
    @service_buyer = service_buyers(:one)
  end

  test "visiting the index" do
    visit service_buyers_url
    assert_selector "h1", text: "Service buyers"
  end

  test "should create service buyer" do
    visit service_buyers_url
    click_on "New service buyer"

    check "Active" if @service_buyer.active
    fill_in "Buyer", with: @service_buyer.buyer_id
    fill_in "Payout", with: @service_buyer.payout
    fill_in "Service", with: @service_buyer.service_id
    click_on "Create Service buyer"

    assert_text "Service buyer was successfully created"
    click_on "Back"
  end

  test "should update Service buyer" do
    visit service_buyer_url(@service_buyer)
    click_on "Edit this service buyer", match: :first

    check "Active" if @service_buyer.active
    fill_in "Buyer", with: @service_buyer.buyer_id
    fill_in "Payout", with: @service_buyer.payout
    fill_in "Service", with: @service_buyer.service_id
    click_on "Update Service buyer"

    assert_text "Service buyer was successfully updated"
    click_on "Back"
  end

  test "should destroy Service buyer" do
    visit service_buyer_url(@service_buyer)
    click_on "Destroy this service buyer", match: :first

    assert_text "Service buyer was successfully destroyed"
  end
end
