require "test_helper"

class BuyerLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @buyer_location = buyer_locations(:one)
  end

  test "should get index" do
    get buyer_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_buyer_location_url
    assert_response :success
  end

  test "should create buyer_location" do
    assert_difference("BuyerLocation.count") do
      post buyer_locations_url, params: { buyer_location: { active: @buyer_location.active, buyer_id: @buyer_location.buyer_id, location_id: @buyer_location.location_id } }
    end

    assert_redirected_to buyer_location_url(BuyerLocation.last)
  end

  test "should show buyer_location" do
    get buyer_location_url(@buyer_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_buyer_location_url(@buyer_location)
    assert_response :success
  end

  test "should update buyer_location" do
    patch buyer_location_url(@buyer_location), params: { buyer_location: { active: @buyer_location.active, buyer_id: @buyer_location.buyer_id, location_id: @buyer_location.location_id } }
    assert_redirected_to buyer_location_url(@buyer_location)
  end

  test "should destroy buyer_location" do
    assert_difference("BuyerLocation.count", -1) do
      delete buyer_location_url(@buyer_location)
    end

    assert_redirected_to buyer_locations_url
  end
end
