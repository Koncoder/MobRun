# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


RunSession.destroy_all
Run.destroy_all
Route.destroy_all
User.destroy_all

user1 = User.create(name: "Michael", email: "michael@email.com", password: "hunter2")
user1.save
user2 = User.create(name: "Konstantin", email: "kon@email.com", password: "hunter2")
user2.save

(1..100).each { |i|
  user = User.create(name: "seed#{i}", email: "seed#{i}@email.com", password: "hunter2")
  user.save
  if i = 1
    route = Route.create(name: "Around Montreal", start_point: "Fonderie Darling", end_point: "Avenue Virger O", total_length: "9.12", wikiloc: "24859054")
  end
}

route1 = Route.create(start_point: "Mt Royal", end_point: "Old Port", total_length: "50", wikiloc: '24436449')
route1.save
route2 = Route.create(start_point: "Cafe Santropol", end_point: "Cafe Santropol", total_length: 5.25, wikiloc: '11292411')
route2.save

run1 = Run.new
run1.user = user1
run1.route = route1
run1.start_time = Date.today
run1.end_time = Date.tomorrow
run1.save

run2 = Run.new
run2.user = user2 # user who is creating the run
run2.route = route1
run2.start_time = Date.tomorrow
run2.save

run_session1 = RunSession.create(user_id: user1.id, run_id: run1.id, start_point: 1)
run_session1.save
run_session2 = RunSession.create(user_id: user2.id, run_id: run1.id, start_point: 1)
run_session1.save
