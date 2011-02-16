class Caller < ActiveRecord::Base
  belongs_to :call
  has_one :user
end
