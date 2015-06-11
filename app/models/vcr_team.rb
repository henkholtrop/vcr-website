class VcrTeam < ActiveRecord::Base
  validates :title, presence: true,
                  length: { minimum: 5 }

  has_many :vcr_games

  has_attached_file :cover_image, :default_url => "/images/normal/missing_cover.png"
  validates_attachment_content_type :cover_image, content_type: /\Aimage\/.*\Z/

  has_attached_file :team_image, :default_url => "/images/normal/missing_team.png"
  validates_attachment_content_type :team_image, content_type: /\Aimage\/.*\Z/
end
