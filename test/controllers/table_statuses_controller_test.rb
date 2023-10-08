require "test_helper"

class TableStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @table_status = table_statuses(:one)
  end

  test "should get index" do
    get table_statuses_url, as: :json
    assert_response :success
  end

  test "should create table_status" do
    assert_difference("TableStatus.count") do
      post table_statuses_url, params: { table_status: { name: @table_status.name } }, as: :json
    end

    assert_response :created
  end

  test "should show table_status" do
    get table_status_url(@table_status), as: :json
    assert_response :success
  end

  test "should update table_status" do
    patch table_status_url(@table_status), params: { table_status: { name: @table_status.name } }, as: :json
    assert_response :success
  end

  test "should destroy table_status" do
    assert_difference("TableStatus.count", -1) do
      delete table_status_url(@table_status), as: :json
    end

    assert_response :no_content
  end
end
