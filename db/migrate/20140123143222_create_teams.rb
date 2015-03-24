class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.belongs_to :games, index: true
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
