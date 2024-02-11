class AddCategoryColumn < ActiveRecord::Migration[7.1]
  def change
    add_column :post_workouts, :category, :integer
  end
end
