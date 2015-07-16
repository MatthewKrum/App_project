class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.references :player, index:true, foreign_key: true
       t.references :game, index:true, foreign_key: true
        t.integer :time
        t.string :assist_or_goal
        

      t.timestamps null: false
    end
  end
end
