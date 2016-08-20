class AddCategoryToContests < ActiveRecord::Migration
  def change
    add_column :contests, :category, :string
  end
end
