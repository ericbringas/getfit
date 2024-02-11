class CreatePostWorkouts < ActiveRecord::Migration[7.1]
  def change
    create_table :post_workouts do |t|
      t.string :name
      t.text :date
      t.text :duration

      t.timestamps
    end
  end
end
