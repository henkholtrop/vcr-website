class CreateVcrTeams < ActiveRecord::Migration
  def change
    create_table :vcr_teams do |t|
      t.string :title
      t.string :age_group

      t.timestamps
    end
  end
end
