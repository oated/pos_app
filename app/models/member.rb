# == Schema Information
#
# Table name: members
#
#  id          :bigint           not null, primary key
#  apply_date  :date
#  cid         :string
#  expire_date :date
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Member < ApplicationRecord
end
