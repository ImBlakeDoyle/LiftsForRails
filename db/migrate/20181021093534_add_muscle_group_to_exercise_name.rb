class AddMuscleGroupToExerciseName < ActiveRecord::Migration[5.2]
  def change
    add_reference :exercise_names, :muscle_group, foreign_key: true
  end
end
