# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Player.destroy_all
Quiz.destroy_all

p1 = Player.create!(first_name: "Junaid", last_name: "Tariq", age: 28, phone: 3015290877, username: "junaid", password: "pwd", email: "junaidtariq_91@yahoo.com", bio: "I love to code.", avatar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnn2PHca1p-85AZtOZE15Yj2QZvrtyU2DOSZmfHf5aUtvGvnZW", cover: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREy22DQSEU5ifbaMnI8cjfHAVEqXV9sgyo6yjxfWenuwK8XcOznw")
p2 = Player.create!(first_name: "Ammar", last_name: "Yasir", age: 10, phone: 3015290877, username: "ammar", password: "pwd", email: "jdkhan91@gmail.com", bio: "I am a cool kid.", avatar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnn2PHca1p-85AZtOZE15Yj2QZvrtyU2DOSZmfHf5aUtvGvnZW", cover: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREy22DQSEU5ifbaMnI8cjfHAVEqXV9sgyo6yjxfWenuwK8XcOznw")

q1 = Quiz.create!(points: 100, difficulty: "Medium", player_id: p1.id)
q2 = Quiz.create!(points: 150, difficulty: "Easy", player_id: p2.id)
