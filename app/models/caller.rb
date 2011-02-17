class Caller < ActiveRecord::Base
  belongs_to :call
  has_one :user 
  has_one :pushed
end

# == Schema Information
#
# Table name: callers
#
#  id         :integer         not null, primary key
#  call_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

