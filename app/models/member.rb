class Member < ActiveRecord::Base
  belongs_to :vcr_team

  has_attached_file :avatar, :default_url => "/images/normal/missing_avatar.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
