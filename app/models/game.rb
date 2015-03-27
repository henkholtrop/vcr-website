class Game < ActiveRecord::Base
<<<<<<< HEAD
  has_and_belongs_to_many :teams, dependent: :destroy
=======
  has_many :teams
>>>>>>> f1d7283e082e106d400bc3b3e8ad96bdca219673
end
