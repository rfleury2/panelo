class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :rating, default: 1000

      t.timestamps null: false
    end
  end
end
