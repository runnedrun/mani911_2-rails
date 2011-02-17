class Contact < ActiveRecord::Base
  belongs_to :user
end

# == Schema Information
#
# Table name: contacts
#
#  id         :integer         not null, primary key
#  type       :string(255)
#  number     :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

