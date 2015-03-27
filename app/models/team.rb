class Team < ActiveRecord::Base
  has_and_belongs_to_many :games, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 2 }

  has_attached_file :logo
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/
<<<<<<< HEAD
=======
  belongs_to :game
>>>>>>> f1d7283e082e106d400bc3b3e8ad96bdca219673
end
