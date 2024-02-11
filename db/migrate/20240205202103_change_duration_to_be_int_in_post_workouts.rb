class ChangeDurationToBeIntInPostWorkouts < ActiveRecord::Migration[7.1]
  def change
    change_column :post_workouts, :duration, :integer
  end
end
