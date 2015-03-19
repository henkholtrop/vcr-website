class CreateScaffolds < ActiveRecord::Migration
  def change
    create_table :scaffolds do |t|
      t.integer :home_team
      t.integer :away_team
      t.datetime :date
      t.integer :home_score
      t.integer :away_score

      t.timestamps
    end
  end
end
