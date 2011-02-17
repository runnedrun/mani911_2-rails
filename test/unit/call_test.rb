require 'test_helper'

class CallTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: calls
#
#  id                    :integer         not null, primary key
#  location              :string(255)
#  emergency_description :string(255)
#  comments              :string(255)
#  status                :boolean
#  created_at            :datetime
#  updated_at            :datetime
#

