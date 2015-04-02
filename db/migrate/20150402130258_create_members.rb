class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :occupation
      t.integer :phone
      t.string :email
      t.date :birth_date
      t.belongs_to :vcr_team, index: true
      t.integer :team

      t.timestamps
    end
  end
end
