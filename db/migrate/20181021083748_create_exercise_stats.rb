class CreateExerciseStats < ActiveRecord::Migration[5.2]
  def change
    create_table :exercise_stats do |t|
      t.decimal :weight
      t.integer :reps
      t.boolean :increase
      t.text :comments

      t.timestamps
    end
  end
end
