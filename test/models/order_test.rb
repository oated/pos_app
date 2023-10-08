# == Schema Information
#
# Table name: orders
#
#  id             :bigint           not null, primary key
#  order_date     :date
#  order_no       :string
#  order_time     :time
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  bill_id        :bigint           not null
#  order_staff_id :bigint           not null
#
# Indexes
#
#  index_orders_on_bill_id         (bill_id)
#  index_orders_on_order_date      (order_date)
#  index_orders_on_order_no        (order_no)
#  index_orders_on_order_staff_id  (order_staff_id)
#
# Foreign Keys
#
#  fk_rails_...  (bill_id => bills.id) ON DELETE => cascade
#  fk_rails_...  (order_staff_id => staffs.id) ON DELETE => nullify
#
require "test_helper"

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
