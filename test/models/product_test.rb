# == Schema Information
#
# Table name: products
#
#  id                  :bigint           not null, primary key
#  description         :string
#  name                :string
#  price               :float            default(0.0)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  product_category_id :bigint           not null
#
# Indexes
#
#  index_products_on_name                 (name)
#  index_products_on_product_category_id  (product_category_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_category_id => product_categories.id) ON DELETE => cascade
#
require "test_helper"

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
