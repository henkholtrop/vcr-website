class VcrTeam < ActiveRecord::Base
  validates :title, presence: true,
                  length: { minimum: 5 }

  has_attached_file :cover_image
  validates_attachment_content_type :cover_image, content_type: /\Aimage\/.*\Z/

  has_attached_file :team_image
  validates_attachment_content_type :team_image, content_type: /\Aimage\/.*\Z/
end
