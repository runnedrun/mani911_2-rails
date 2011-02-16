class Call < ActiveRecord::Base
  has_one :caller
  has_one :pushed 
end
