require "test_helper"

class BookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @booking = bookings(:one)
  end

  test "should get index" do
    get bookings_url, as: :json
    assert_response :success
  end

  test "should create booking" do
    assert_difference("Booking.count") do
      post bookings_url, params: { booking: { book_date: @booking.book_date, book_no: @booking.book_no, book_time: @booking.book_time, booker_name: @booking.booker_name, booking_status_id: @booking.booking_status_id, table_id: @booking.table_id } }, as: :json
    end

    assert_response :created
  end

  test "should show booking" do
    get booking_url(@booking), as: :json
    assert_response :success
  end

  test "should update booking" do
    patch booking_url(@booking), params: { booking: { book_date: @booking.book_date, book_no: @booking.book_no, book_time: @booking.book_time, booker_name: @booking.booker_name, booking_status_id: @booking.booking_status_id, table_id: @booking.table_id } }, as: :json
    assert_response :success
  end

  test "should destroy booking" do
    assert_difference("Booking.count", -1) do
      delete booking_url(@booking), as: :json
    end

    assert_response :no_content
  end
end
