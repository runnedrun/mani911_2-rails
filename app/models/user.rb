class User < ActiveRecord::Base
  belongs_to :caller
  belongs_to :helper
  has_many :contacts
end

# == Schema Information
#
# Table name: users
#
#  id             :integer         not null, primary key
#  caller_id      :integer
#  heler_id       :integer
#  name           :string(255)
#  age            :decimal(, )
#  med_conditions :string(255)
#  residence      :string(255)
#  number         :string(255)
#  carrier        :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

