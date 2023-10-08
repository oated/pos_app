require "test_helper"

class BillStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bill_status = bill_statuses(:one)
  end

  test "should get index" do
    get bill_statuses_url, as: :json
    assert_response :success
  end

  test "should create bill_status" do
    assert_difference("BillStatus.count") do
      post bill_statuses_url, params: { bill_status: { name: @bill_status.name } }, as: :json
    end

    assert_response :created
  end

  test "should show bill_status" do
    get bill_status_url(@bill_status), as: :json
    assert_response :success
  end

  test "should update bill_status" do
    patch bill_status_url(@bill_status), params: { bill_status: { name: @bill_status.name } }, as: :json
    assert_response :success
  end

  test "should destroy bill_status" do
    assert_difference("BillStatus.count", -1) do
      delete bill_status_url(@bill_status), as: :json
    end

    assert_response :no_content
  end
end
