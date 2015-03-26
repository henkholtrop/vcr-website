class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :title
      t.attachment :logo

      t.timestamps
    end
  end
end
