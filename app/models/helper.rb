class Helper < ActiveRecord::Base
  belongs_to :call
  has_one :user
end
