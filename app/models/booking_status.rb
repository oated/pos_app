# == Schema Information
#
# Table name: booking_statuses
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class BookingStatus < ApplicationRecord
end
