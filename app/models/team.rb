class Team < ActiveRecord::Base
  has_and_belongs_to_many :games, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 2 }

  has_attached_file :logo
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/
  belongs_to :game
end
