# == Schema Information
#
# Table name: order_items
#
#  id                   :bigint           not null, primary key
#  amount               :float            default(0.0)
#  price                :float            default(0.0)
#  product_name         :string           default("0")
#  unit_price           :float            default(0.0)
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  order_id             :bigint           not null
#  order_item_status_id :bigint           not null
#  product_id           :bigint           not null
#
# Indexes
#
#  index_order_items_on_order_id              (order_id)
#  index_order_items_on_order_item_status_id  (order_item_status_id)
#  index_order_items_on_product_id            (product_id)
#
# Foreign Keys
#
#  fk_rails_...  (order_id => orders.id) ON DELETE => cascade
#  fk_rails_...  (order_item_status_id => order_item_statuses.id) ON DELETE => restrict
#  fk_rails_...  (product_id => products.id) ON DELETE => restrict
#
require "test_helper"

class OrderItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
