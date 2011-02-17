class Pushed < ActiveRecord::Base
  belongs_to :caller
  belongs_to :helper
  has_many :instructions
end

# == Schema Information
#
# Table name: pusheds
#
#  id         :integer         not null, primary key
#  caller_id  :integer
#  helper_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

