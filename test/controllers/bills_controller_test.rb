require "test_helper"

class BillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bill = bills(:one)
  end

  test "should get index" do
    get bills_url, as: :json
    assert_response :success
  end

  test "should create bill" do
    assert_difference("Bill.count") do
      post bills_url, params: { bill: { bill_no: @bill.bill_no, bill_status_id: @bill.bill_status_id, booking_id: @bill.booking_id, cancel_staff_id: @bill.cancel_staff_id, cashier_staff_id: @bill.cashier_staff_id, changes: @bill.changes, close_date: @bill.close_date, close_time: @bill.close_time, discount: @bill.discount, member_id: @bill.member_id, open_date: @bill.open_date, open_staff_id: @bill.open_staff_id, open_time: @bill.open_time, pay: @bill.pay, payment_type_id: @bill.payment_type_id, price_after_discount: @bill.price_after_discount, properties: @bill.properties, table_id: @bill.table_id, total_price: @bill.total_price } }, as: :json
    end

    assert_response :created
  end

  test "should show bill" do
    get bill_url(@bill), as: :json
    assert_response :success
  end

  test "should update bill" do
    patch bill_url(@bill), params: { bill: { bill_no: @bill.bill_no, bill_status_id: @bill.bill_status_id, booking_id: @bill.booking_id, cancel_staff_id: @bill.cancel_staff_id, cashier_staff_id: @bill.cashier_staff_id, changes: @bill.changes, close_date: @bill.close_date, close_time: @bill.close_time, discount: @bill.discount, member_id: @bill.member_id, open_date: @bill.open_date, open_staff_id: @bill.open_staff_id, open_time: @bill.open_time, pay: @bill.pay, payment_type_id: @bill.payment_type_id, price_after_discount: @bill.price_after_discount, properties: @bill.properties, table_id: @bill.table_id, total_price: @bill.total_price } }, as: :json
    assert_response :success
  end

  test "should destroy bill" do
    assert_difference("Bill.count", -1) do
      delete bill_url(@bill), as: :json
    end

    assert_response :no_content
  end
end
