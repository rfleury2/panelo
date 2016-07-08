class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.string :title
      t.string :short_code
      t.belongs_to :category

      t.timestamps null: false
    end
  end
end
