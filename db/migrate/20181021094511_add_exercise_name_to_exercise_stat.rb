class AddExerciseNameToExerciseStat < ActiveRecord::Migration[5.2]
  def change
    add_reference :exercise_stats, :exercise_name, foreign_key: true
  end
end
