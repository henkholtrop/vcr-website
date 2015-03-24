class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text
      t.attachment :cover_image
      t.timestamps
    end
  end
end
