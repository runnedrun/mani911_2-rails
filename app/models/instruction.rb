class Instruction < ActiveRecord::Base
  belongs_to :pushed
  
  has_attached_file :photo,
  :styles => {
    :thumb=> "100x100#",
    :small  => "150x150>",
    :medium => "300x300>",
    :large =>   "400x400>" }
end

# == Schema Information
#
# Table name: instructions
#
#  id                 :integer         not null, primary key
#  description        :string(255)
#  title              :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  photo_file_name    :string(255)
#  photo_content_type :string(255)
#  photo_file_size    :integer
#

