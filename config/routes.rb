Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :post_workouts
  get "/pages/:page", to: "pages#show"

  # get "/post_workouts/new", to: "post_workouts#new", as: :new_post_work_out
# get "/post_workouts/:id", to: "post_workouts#show", as: :post_workout
# patch "/post_workouts/:id", to: "post_workouts#update"
# delete "/post_workouts/:id", to: "post_workouts#destroy"
# get "/post_workouts/:id/edit", to: "post_workouts#edit", as: :edit_post_workout
# post "/post_workouts", to: "post_workouts#create", as: :post_workouts

# Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  # Defines the root path route ("/")

#  root "post_workouts#index"
 root "pages#home"

end
