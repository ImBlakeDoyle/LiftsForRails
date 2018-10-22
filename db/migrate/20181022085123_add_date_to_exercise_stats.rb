class AddDateToExerciseStats < ActiveRecord::Migration[5.2]
  def change
    add_column :exercise_stats, :date, :date
  end
end
