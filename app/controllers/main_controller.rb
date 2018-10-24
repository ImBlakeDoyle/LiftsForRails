class MainController < ApplicationController
    def index
        @musclegroups = MuscleGroup.all
    end
end