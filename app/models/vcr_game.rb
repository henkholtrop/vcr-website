class VcrGame < ActiveRecord::Base
  validates :home_team, presence: true
  validates :away_team, presence: true
end
