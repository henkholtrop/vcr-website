class Game < ActiveRecord::Base
  has_and_belongs_to_many :teams, dependent: :destroy
  has_many :teams
end
