class VcrGame < ActiveRecord::Base
  belongs_to :vcr_team
  
  validates :home_team, presence: true
  validates :away_team, presence: true
end
