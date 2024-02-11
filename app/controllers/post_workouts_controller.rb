class PostWorkoutsController < ApplicationController
    before_action :authenticate_user!, except: [:show]
    # before_action :set_post_workout, only: [:show, :edit, update, destroy]
    

def index
    @post_workouts = PostWorkout.where(user_id: current_user.id)
end

def show
    @post_workout = PostWorkout.find(params[:id])
    rescue ActiveRecord::RecordNotFound
    redirect_to root_path
end

def new
    @post_workout = PostWorkout.new
end

def create
    @post_workout = PostWorkout.new(post_workout_params.merge({user_id: current_user.id}))
    if @post_workout.save
        redirect_to @post_workout
    else
        render :new, status: :unprocessable_entity
    end
end

def edit
    @post_workout  = PostWorkout.find(params[:id])
end

def update
    @post_workout = PostWorkout.find(params[:id])
    if @post_workout.update(post_workout_params)
        redirect_to @post_workout
    else
        render :edit, status: :unprocessable_entity
    end
end

def destroy
    @post_workout = PostWorkout.find(params[:id])
    @post_workout.destroy
    redirect_to root_path
end

private

def post_workout_params
params.require(:post_workout).permit(:name, :category, :date, :duration)
end

# def set_post_workout
#    @post_workout  = PostWorkout.find(params[:id])
# end

end