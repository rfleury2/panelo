class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.belongs_to :player_1
      t.belongs_to :player_2
      t.string :winner

      t.timestamps null: false
    end
  end
end
