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
class Session < ApplicationRecord
  belongs_to :staff

  before_create :generate_access_token
  before_create :set_attr

  def set_attr
    self.is_enable = true
    self.expire_datetime = 5.hours.from_now
  end
  def generate_access_token
    salt = '$**SAMPLE POS API Salt**$'
    self.access_token = Digest::SHA512.hexdigest("#{salt}_&_#{salt}#{Time.now}")
  end

end
