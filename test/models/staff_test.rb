# == Schema Information
#
# Table name: staffs
#
#  id               :bigint           not null, primary key
#  crypted_password :string
#  display_name     :string
#  username         :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_staffs_on_display_name                   (display_name)
#  index_staffs_on_username                       (username)
#  index_staffs_on_username_and_crypted_password  (username,crypted_password)
#
require "test_helper"

class StaffTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
