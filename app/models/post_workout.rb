class PostWorkout < ApplicationRecord
    validates :name, presence: true
    validates :date, presence: true
    validates :duration, presence: true
    enum :category, { swimming: 0, running: 1, basketball: 2, hiit: 3, walking: 4, hiking: 5, weightlifting: 6, walking: 7, biking: 8, zumba: 9, yoga: 10  }
end
