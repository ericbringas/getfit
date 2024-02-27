class PostWorkout < ApplicationRecord
    validates :name, presence: true
    validates :date, presence: true
    validates :duration, presence: true
    enum :category, { Basketball: 2, Biking: 8, HIIT: 3, Hiking: 5, Running: 1, Swimming: 0, Threadmill: 7, Walking: 4, Weightlifting: 6, Zumba: 9 }
end
