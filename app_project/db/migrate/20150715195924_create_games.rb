class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.date :date
      t.string :field
      t.string :home_team
      t.string :away_team
      

      t.timestamps null: false
    end
  end
end
