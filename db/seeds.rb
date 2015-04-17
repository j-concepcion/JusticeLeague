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

1.upto(5) do |i|
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    username: Faker::Internet.user_name,
    password: 'password',
    date_of_birth: (rand(20..40.years)).ago,
    street_adderss: (Faker::Address.street_address).to_s
    )
end

Candidate::POSITIONS.each do |p|
    1.upto(2) do |i|
        Candidate.create(
            first_name: Faker::Name.first_name,
            last_name: Faker::Name.last_name,
            position: p,
            age: (rand(1...60)).to_i,
            agenda: Faker::Lorem.paragraph(2),
            achievements: Faker::Lorem.paragraph(3)
            )
    end
end