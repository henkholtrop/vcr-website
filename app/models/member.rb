class Member < ActiveRecord::Base
  belongs_to :vcr_team

  has_attached_file :avatar
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
