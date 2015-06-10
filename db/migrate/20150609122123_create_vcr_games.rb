class CreateVcrGames < ActiveRecord::Migration
  def change
    create_table :vcr_games do |t|
      t.datetime :date
      t.string :home_team
      t.string :away_team
      t.integer :vcr_team

      t.timestamps
    end
  end
end
