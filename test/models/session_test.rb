# == Schema Information
#
# Table name: sessions
#
#  id              :bigint           not null, primary key
#  access_token    :string
#  expire_datetime :datetime
#  is_enable       :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  staff_id        :bigint           not null
#
# Indexes
#
#  index_sessions_on_access_token  (access_token)
#  index_sessions_on_is_enable     (is_enable)
#  index_sessions_on_staff_id      (staff_id)
#
# Foreign Keys
#
#  fk_rails_...  (staff_id => staffs.id) ON DELETE => cascade
#
require "test_helper"

class SessionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
