class ContentPage < ActiveRecord::Base
  validates :title, presence: true,
                    length: { minimum: 3 }

  has_attached_file :cover_image, :default_url => "/images/normal/missing_cover.png"
  validates_attachment_content_type :cover_image, content_type: /\Aimage\/.*\Z/
end
