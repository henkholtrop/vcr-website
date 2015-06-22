class AddInfoToVcrTeam < ActiveRecord::Migration
  def change
    add_column :vcr_teams, :info, :string
  end
end
