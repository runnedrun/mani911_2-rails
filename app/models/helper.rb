class Helper < ActiveRecord::Base
  belongs_to :call
  has_one :user
end

# == Schema Information
#
# Table name: helpers
#
#  id         :integer         not null, primary key
#  call_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

