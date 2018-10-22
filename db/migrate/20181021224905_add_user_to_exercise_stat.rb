class AddUserToExerciseStat < ActiveRecord::Migration[5.2]
  def change
    add_reference :exercise_stats, :user, foreign_key: true
  end
end
