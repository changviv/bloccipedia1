# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(
  username: 'Vivien',
  email: 'vchang103@gmail.com',
  password: 'password',
  role: 'admin'
)
# Create Users
25.times do
  User.create!(
    username: Faker::Internet.user_name,
    email: Faker::Internet.email,
    password: 'password'
  )
end

# Create Wikis
50.times do

  Wiki.create!(
    title:  Faker::TwinPeaks.quote,
    body: Faker::Lorem.paragraph
  )
end
wikis = Wiki.all

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Wiki.count} wikis created"
