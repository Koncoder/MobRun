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

50.times do |index|
  User.create!(name: "Name #{index}",
  email: "email #{index}",
  password: "password #{index}")
end
50.times do |index|
  Route.create!(name: "Name #{index}",
  start_point: "start_point #{index}",
  end_point: "end_point #{index}")
  total_length: "total_length #{index}",
  wikiloc: "wikiloc #{index}",

end




user1 = User.create(name: "Michael", email: "michael@email.com", password: "hunter2", remote_profile_picture_url: "https://res.cloudinary.com/dafxl6kch/image/upload/v1534437580/michael.png" )
user1.save
user2 = User.create(name: "Konstantin", email: "kon@email.com", password: "hunter2", profile_picture: "http://res.cloudinary.com/dafxl6kch/image/upload/v1534437524/konstantin_2.jpg" )
user2.save

route1 = Route.create(name: "Around Montreal", start_point: "Fonderie Darling", end_point: "Avenue Virger O", total_length: "9.12", wikiloc: "24859054")
route1.save
route2 = Route.create(name: "Mont Royal", start_point: "Mcintyre", end_point: "Mcintyre", total_length: "4.3", wikiloc: "12990420")
route2.save
route3 = Route.create(name: "Marathon", start_point: "Theme Park", end_point: "Insectarium", total_length: "41.89", wikiloc: "2082120")
route3.save
route4 = Route.create(name: "Tourist places", start_point: "Le Nouve Hotel", end_point: "Le Nouve Hotel", total_length: "16.68", wikiloc: "7258239")
route4.save
route5 = Route.create(name: "Le Port - Mont Royal", start_point: "Le Vieux-Port", end_point: "Le Vieux-Port", total_length: "17.48", wikiloc: "19660820")
route5.save

(1..100).each { |i|
  user = User.create(name: "seed#{i}", email: "seed#{i}@email.com", password: "hunter2")
  user.save
  if i == 1
    run = Run.new
    run.user = user
    run.route = route1
    run.start_time = Time.now + 24*60*60
    run.speed = 7
    run.end_time = run.start_time + 3600*run.route.total_length/run.speed
    run.save
    run = Run.new
    run.user = user
    run.route = route4
    run.start_time = Time.now - 24*60*60
    run.speed = 6.5
    run.end_time = run.start_time + 3600*run.route.total_length/run.speed
    run.save
  end
  if i == 2
    run = Run.new
    run.user = user
    run.route = route2
    run.start_time = Time.now + 48*60*60
    run.speed = 8
    run.end_time = run.start_time + 3600*run.route.total_length/run.speed
    run.save
    run = Run.new
    run.user = user
    run.route = route3
    run.start_time = Time.now + 24*60*60
    run.speed = 7
    run.end_time = run.start_time + 3600*run.route.total_length/run.speed
    run.save
  end
  if i == 3
    run = Run.new
    run.user = user
    run.route = route3
    run.start_time = Time.now + 10*48*60*60
    run.speed = 6
    run.end_time = run.start_time + 3600*run.route.total_length/run.speed
    run.save
    run = Run.new
    run.user = user
    run.route = route5
    run.start_time = Time.now + 24*60*60
    run.speed = 7
    run.end_time = run.start_time + 3600*run.route.total_length/run.speed
    run.save

    run = Run.new
    run.user = user
    run.route = route1
    run.start_time = Time.now + 2*24*60*60
    run.speed = 8
    run.end_time = run.start_time + 3600*run.route.total_length/run.speed
    run.save
  end
  if i.between?(5, 25)
    run_session = RunSession.create()
    run_session[:user_id] = user.id
    run_session[:start_point] = 1
    run_session[:run_id] = 1
    run_session.save
  end

  if i.between?(20, 50)

    run_session = RunSession.create()
    run_session[:user_id] = user.id
    run_session[:start_point] = 1

    run_session[:run_id] = 2
    run_session.save
    run_session = RunSession.create()
    run_session[:user_id] = user.id
    run_session[:start_point] = 1

    run_session[:run_id] = 3
    run_session.save
  end

  if i.between?(40, 90)

    run_session = RunSession.create()
    run_session[:user_id] = user.id
    run_session[:start_point] = 1

    run_session[:run_id] = 3
    run_session.save
    run_session = RunSession.create()
    run_session[:user_id] = user.id
    run_session[:start_point] = 1

    run_session[:run_id] = 4
    run_session.save
  end

  if i.between?(85, 100)

    run_session = RunSession.create()
    run_session[:user_id] = user.id
    run_session[:start_point] = 1

    run_session[:run_id] = 4
    run_session.save
    run_session = RunSession.create()
    run_session[:user_id] = user.id
    run_session[:start_point] = 1

    run_session[:run_id] = 5
    run_session.save
  end
}
