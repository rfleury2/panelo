class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
