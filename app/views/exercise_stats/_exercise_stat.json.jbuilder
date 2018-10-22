json.extract! exercise_stat, :id, :weight, :reps, :increase, :comments, :created_at, :updated_at
json.url exercise_stat_url(exercise_stat, format: :json)
