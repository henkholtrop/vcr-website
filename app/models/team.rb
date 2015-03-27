class Team < ActiveRecord::Base
  belongs_to :game
  validates :title, presence: true,
                    length: { minimum: 2 }

  has_attached_file :logo
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/
end
