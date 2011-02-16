class Call < ActiveRecord::Base
  has_one :caller
  has_many :helpers
end
