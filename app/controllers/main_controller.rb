class MainController < ApplicationController
    def index
        @musclegroups = MuscleGroup.all
        @exercisenames = ExerciseName.all
    end
end