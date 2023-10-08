require "test_helper"

class OrderItemStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_item_status = order_item_statuses(:one)
  end

  test "should get index" do
    get order_item_statuses_url, as: :json
    assert_response :success
  end

  test "should create order_item_status" do
    assert_difference("OrderItemStatus.count") do
      post order_item_statuses_url, params: { order_item_status: { name: @order_item_status.name } }, as: :json
    end

    assert_response :created
  end

  test "should show order_item_status" do
    get order_item_status_url(@order_item_status), as: :json
    assert_response :success
  end

  test "should update order_item_status" do
    patch order_item_status_url(@order_item_status), params: { order_item_status: { name: @order_item_status.name } }, as: :json
    assert_response :success
  end

  test "should destroy order_item_status" do
    assert_difference("OrderItemStatus.count", -1) do
      delete order_item_status_url(@order_item_status), as: :json
    end

    assert_response :no_content
  end
end
