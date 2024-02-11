class AddUserRefToWorkouts < ActiveRecord::Migration[7.1]
  def change
    add_reference :post_workouts, :user, null: false, foreign_key: true
  end
end
