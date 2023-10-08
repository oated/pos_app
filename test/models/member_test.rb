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
require "test_helper"

class MemberTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
