# == Schema Information
#
# Table name: product_categories
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_product_categories_on_name  (name)
#
class ProductCategory < ApplicationRecord

    validates :name, presence: true, uniqueness: true
    
end
