require "test_helper"

class ServiceBuyersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_buyer = service_buyers(:one)
  end

  test "should get index" do
    get service_buyers_url
    assert_response :success
  end

  test "should get new" do
    get new_service_buyer_url
    assert_response :success
  end

  test "should create service_buyer" do
    assert_difference("ServiceBuyer.count") do
      post service_buyers_url, params: { service_buyer: { active: @service_buyer.active, buyer_id: @service_buyer.buyer_id, payout: @service_buyer.payout, service_id: @service_buyer.service_id } }
    end

    assert_redirected_to service_buyer_url(ServiceBuyer.last)
  end

  test "should show service_buyer" do
    get service_buyer_url(@service_buyer)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_buyer_url(@service_buyer)
    assert_response :success
  end

  test "should update service_buyer" do
    patch service_buyer_url(@service_buyer), params: { service_buyer: { active: @service_buyer.active, buyer_id: @service_buyer.buyer_id, payout: @service_buyer.payout, service_id: @service_buyer.service_id } }
    assert_redirected_to service_buyer_url(@service_buyer)
  end

  test "should destroy service_buyer" do
    assert_difference("ServiceBuyer.count", -1) do
      delete service_buyer_url(@service_buyer)
    end

    assert_redirected_to service_buyers_url
  end
end
