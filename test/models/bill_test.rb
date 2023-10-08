# == Schema Information
#
# Table name: bills
#
#  id                   :bigint           not null, primary key
#  bill_no              :string
#  changes              :float            default(0.0)
#  close_date           :date
#  close_time           :time
#  discount             :float            default(0.0)
#  open_date            :date
#  open_time            :time
#  pay                  :float            default(0.0)
#  price_after_discount :float            default(0.0)
#  properties           :jsonb
#  total_price          :float            default(0.0)
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  bill_status_id       :bigint           not null
#  booking_id           :bigint
#  cancel_staff_id      :bigint
#  cashier_staff_id     :bigint
#  member_id            :bigint
#  open_staff_id        :bigint
#  payment_type_id      :bigint           not null
#  table_id             :bigint           not null
#
# Indexes
#
#  index_bills_on_bill_no           (bill_no)
#  index_bills_on_bill_status_id    (bill_status_id)
#  index_bills_on_booking_id        (booking_id)
#  index_bills_on_cancel_staff_id   (cancel_staff_id)
#  index_bills_on_cashier_staff_id  (cashier_staff_id)
#  index_bills_on_close_date        (close_date)
#  index_bills_on_member_id         (member_id)
#  index_bills_on_open_date         (open_date)
#  index_bills_on_open_staff_id     (open_staff_id)
#  index_bills_on_payment_type_id   (payment_type_id)
#  index_bills_on_table_id          (table_id)
#
# Foreign Keys
#
#  fk_rails_...  (bill_status_id => bill_statuses.id) ON DELETE => restrict
#  fk_rails_...  (booking_id => bookings.id) ON DELETE => nullify
#  fk_rails_...  (cancel_staff_id => staffs.id) ON DELETE => nullify
#  fk_rails_...  (cashier_staff_id => staffs.id) ON DELETE => nullify
#  fk_rails_...  (member_id => members.id) ON DELETE => nullify
#  fk_rails_...  (open_staff_id => staffs.id) ON DELETE => nullify
#  fk_rails_...  (payment_type_id => payment_types.id) ON DELETE => restrict
#  fk_rails_...  (table_id => tables.id) ON DELETE => nullify
#
require "test_helper"

class BillTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
