# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Session.destroy_all
Run.destroy_all
Route.destroy_all
User.destroy_all

user1 = User.create(name: "Michael", email: "michael@email.com", password: "hunter2")
user2 = User.create(name: "Konstantin", email: "kon@email.com", password: "hunter2")

route1 = Route.create(start_point: "Mt Royal", end_point: "Old Port")

run1 = Run.new
run1.user = user1
run1.route = route1
run1.start_time = Date.tomorrow
run1.save

run2 = Run.new
run2.user = user2 # user who is creating the run
run2.route = route1
run2.start_time = Date.tomorrow
run2.save

session1 = Session.new
session1.user = user2 # user who is participating
session1.run = run1
session1.save
