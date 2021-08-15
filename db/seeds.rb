# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


100.times do
  User.create(login: Faker::Internet.username)
end

ips = []
50.times do
  ips.push(Faker::Internet.private_ip_v4_address)
end

200000.times do
  Post.create({title: Faker::Book.title,
               description: Faker::Lorem.sentence,
               user_id: rand(User.count-1),
               ip_adress: ips[rand(ips.count-1)]})
end

1500.times do
  Post.all.shuffle[1].marks.create(value: rand(1..5))
end