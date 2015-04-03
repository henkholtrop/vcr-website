class AddAttachmentCoverImageToVcrTeams < ActiveRecord::Migration
  def self.up
    change_table :vcr_teams do |t|
      t.attachment :cover_image
    end
  end

  def self.down
    remove_attachment :vcr_teams, :cover_image
  end
end
