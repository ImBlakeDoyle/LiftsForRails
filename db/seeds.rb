# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: 'Blake', email: 'blake@blake.com', password: 'blake123', password_confirmation: 'blake123')
MuscleGroup.create([{name: 'Chest'}, {name: 'Back'}, {name: 'Triceps'}, {name: 'Biceps'}, {name: 'Legs'}, {name: 'Shoulders'}])
# ExerciseName.create(name: 'Benchpress', muscle_group_id: 1)

@chestexercise = ['Benchpress', 'Benchpress(Decline)', 'Benchpress(Incline)', 'Dumbbell Press', 'Dumbbell Press(Decline)', 'Dumbbell Press(Incline)', 'Flys', 'Flys(Decline)', 'Flys(Incline)']
@backexercise = ['Rows', 'Deadlift', 'Lat Pulldown', 'Dumbbell Row', 'Pullups']
@tricepexercise = ['Dips', 'Rope Pushdown', 'Bar Pushdown', 'Single Cable Pushdown', 'Skullcrushers', 'Cable Rope Overhead']
@bicepexercise = ['Dumbbell Curl', 'Hammer Curl', 'Barbell Curl']
@legexercise = ['Squat', 'Calf Raise', 'Leg Press', 'Leg Extension', 'Hamstring Curl']
@shoulderexercise = ['Dummbell Press', 'Side Latteral Raise', 'Military Press']

def chest
    @chestexercise.each do |x|
        ExerciseName.create(name: x, muscle_group_id: 1)
    end
end

def back
    @backexercise.each do |x|
        ExerciseName.create(name: x, muscle_group_id: 2)
    end
end

def tricep
    @tricepexercise.each do |x|
        ExerciseName.create(name: x, muscle_group_id: 3)
    end
end

def bicep
    @bicepexercise.each do |x|
        ExerciseName.create(name: x, muscle_group_id: 4)
    end
end

def leg
    @legexercise.each do |x|
        ExerciseName.create(name: x, muscle_group_id: 5)
    end
end

def shoulder
    @shoulderexercise.each do |x|
        ExerciseName.create(name: x, muscle_group_id: 6)
    end
end

chest
back
tricep
bicep
leg
shoulder