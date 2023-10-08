# == Schema Information
#
# Table name: tables
#
#  id              :bigint           not null, primary key
#  name            :string
#  number          :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  table_status_id :bigint           not null
#
# Indexes
#
#  index_tables_on_table_status_id  (table_status_id)
#
# Foreign Keys
#
#  fk_rails_...  (table_status_id => table_statuses.id) ON DELETE => restrict
#
require "test_helper"

class TableTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
