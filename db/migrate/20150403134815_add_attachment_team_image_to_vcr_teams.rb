class AddAttachmentTeamImageToVcrTeams < ActiveRecord::Migration
  def self.up
    change_table :vcr_teams do |t|
      t.attachment :team_image
    end
  end

  def self.down
    remove_attachment :vcr_teams, :team_image
  end
end
