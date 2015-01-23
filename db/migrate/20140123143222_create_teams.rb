class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
