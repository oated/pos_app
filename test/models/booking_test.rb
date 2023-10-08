# == Schema Information
#
# Table name: bookings
#
#  id                :bigint           not null, primary key
#  book_date         :date
#  book_no           :string
#  book_time         :time
#  booker_name       :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  booking_status_id :bigint           not null
#  table_id          :bigint           not null
#
# Indexes
#
#  index_bookings_on_book_date          (book_date)
#  index_bookings_on_book_no            (book_no)
#  index_bookings_on_booker_name        (booker_name)
#  index_bookings_on_booking_status_id  (booking_status_id)
#  index_bookings_on_table_id           (table_id)
#
# Foreign Keys
#
#  fk_rails_...  (booking_status_id => booking_statuses.id) ON DELETE => restrict
#  fk_rails_...  (table_id => tables.id) ON DELETE => nullify
#
require "test_helper"

class BookingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
