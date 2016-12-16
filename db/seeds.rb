# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'ffaker'

Thought.destroy_all
User.destroy_all

p "Hello from seed.rb"

#Start timing....
startTiming = Time.now

5.times do
  email = FFaker::Internet.email
  password = FFaker::Internet.password
  phone = FFaker::PhoneNumber.short_phone_number

  description = FFaker::Lorem.paragraph
  category = FFaker::Book.genre

  User.create(email: email, password: password, phone: phone)
  Thought.create(description: description, category: category)
end

# End timining...
endTiming = Time.now
total = endTiming - startTiming
p total

p "Created #{Thought.count} thoughts"
p "Created #{User.count} users"
