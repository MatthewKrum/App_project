class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_nane
      t.integer :number
      t.string :position

      t.timestamps null: false
    end
  end
end