class PostWorkout < ApplicationRecord
    validates :name, presence: true
    validates :date, presence: true
    validates :duration, presence: true
    enum :category, { swimming: 0, running: 1, basketball: 2, hiit: 3 }
end
