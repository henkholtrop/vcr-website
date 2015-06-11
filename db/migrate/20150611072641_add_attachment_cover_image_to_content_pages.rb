class AddAttachmentCoverImageToContentPages < ActiveRecord::Migration
  def self.up
    change_table :content_pages do |t|
      t.attachment :cover_image
    end
  end

  def self.down
    remove_attachment :content_pages, :cover_image
  end
end
