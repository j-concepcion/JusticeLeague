# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

##########################################################
# USERS
##########################################################

1.upto(19) do |i|
  User.create(
    avatar: Faker::Avatar.image,
    email: Faker::Internet.email,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    password: 'password',
    password_confirmation: 'password',
    encrypted_password: 'password',
    date_of_birth: (rand(20..40.years)).ago,
    street_adderss: (Faker::Address.street_address).to_s
    )
end

##########################################################
# CANDIDATES
##########################################################

Candidate.create(
    avatar: "#{Rails.root}/asset/images/batman.jpg",
    first_name: 'Bruce',
    middle_name: Faker::Name.last_name,
    last_name: 'Wayne',
    position: 'President',
    age: (rand(1...60)).to_i,
    agenda: Faker::Lorem.paragraph(2),
    achievements: Faker::Lorem.paragraph(3),
    votes_rendered: 15,
    )
Candidate.create(
    avatar: "#{Rails.root}/asset/images/superman.jpg",
    first_name: 'Clark',
    middle_name: Faker::Name.last_name,
    last_name: 'Kent',
    position: 'President',
    age: (rand(1...60)).to_i,
    agenda: Faker::Lorem.paragraph(2),
    achievements: Faker::Lorem.paragraph(3),
    votes_rendered: 5,
    )
Candidate.create(
    avatar: "#{Rails.root}/asset/images/sherlock.jpg",
    first_name: 'Sherlock',
    middle_name: Faker::Name.last_name,
    last_name: 'Holmes',
    position: 'Vice President',
    age: (rand(1...60)).to_i,
    agenda: Faker::Lorem.paragraph(2),
    achievements: Faker::Lorem.paragraph(3),
    votes_rendered: 10,
    )
Candidate.create(
    avatar: "#{Rails.root}/asset/images/spock.jpg",
    first_name: 'S\'chn T\'ga',
    middle_name: Faker::Name.last_name,
    last_name: 'Spock',
    position: 'Vice President',
    age: (rand(1...60)).to_i,
    agenda: Faker::Lorem.paragraph(2),
    achievements: Faker::Lorem.paragraph(3),
    votes_rendered: 10,
    )
Candidate.create(
    avatar: "#{Rails.root}/asset/images/darth.jpg",
    first_name: 'Anakin',
    middle_name: Faker::Name.last_name,
    last_name: 'Skywalker',
    position: 'Senator',
    age: (rand(1...60)).to_i,
    agenda: Faker::Lorem.paragraph(2),
    achievements: Faker::Lorem.paragraph(3),
    votes_rendered: 3,
    )
Candidate.create(
    avatar: "#{Rails.root}/asset/images/mickey.jpg",
    first_name: 'Mickey',
    middle_name: Faker::Name.last_name,
    last_name: 'Mouse',
    position: 'Senator',
    age: (rand(1...60)).to_i,
    agenda: Faker::Lorem.paragraph(2),
    achievements: Faker::Lorem.paragraph(3),
    votes_rendered: 17,
    )