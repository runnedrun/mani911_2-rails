class User < ActiveRecord::Base
  belongs_to :caller
  belongs_to :helper
  has_many :contacts
end
