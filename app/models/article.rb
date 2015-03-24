class Article < ActiveRecord::Base
  validates :title, presence: true,
                    length: { minimum: 5 }

  has_attached_file :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end