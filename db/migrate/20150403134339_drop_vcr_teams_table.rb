class DropVcrTeamsTable < ActiveRecord::Migration
  def change
    drop_table :vcr_teams
  end
end
