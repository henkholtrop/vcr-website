class CreateContentPages < ActiveRecord::Migration
  def change
    create_table :content_pages do |t|
      t.string :title
      t.string :content
      t.string :club_type

      t.timestamps
    end
  end
end
