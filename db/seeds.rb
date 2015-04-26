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
User.find_or_create_by!(
    national_id_number: Faker::Business.credit_card_number,
    avatar: Faker::Avatar.image,
    email: "flash@base.com",
    first_name: "Barry",
    last_name: "Allen",
    password: "$2a$10$cHyiV6SD/vdO674gzqZCP.mbSMjcct.gU..aS2Vi7nA.DZ8bILjZy",
    encrypted_password: "$2a$10$cHyiV6SD/vdO674gzqZCP.mbSMjcct.gU..aS2Vi7nA.DZ8bILjZy",
    password_confirmation: "$2a$10$cHyiV6SD/vdO674gzqZCP.mbSMjcct.gU..aS2Vi7nA.DZ8bILjZy",
    date_of_birth: (rand(20..40.years)).ago,
    street_adderss: (Faker::Address.street_address).to_s
    )

1.upto(19) do |i|
 User.find_or_create_by!(
    national_id_number: Faker::Business.credit_card_number,
    avatar: Faker::Avatar.image,
    email: "user#{i}@base.com",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    password: "$2a$10$cHyiV6SD/vdO674gzqZCP.mbSMjcct.gU..aS2Vi7nA.DZ8bILjZy",
    encrypted_password: "$2a$10$cHyiV6SD/vdO674gzqZCP.mbSMjcct.gU..aS2Vi7nA.DZ8bILjZy",
    password_confirmation: "$2a$10$cHyiV6SD/vdO674gzqZCP.mbSMjcct.gU..aS2Vi7nA.DZ8bILjZy",
    date_of_birth: (rand(20..40.years)).ago,
    street_adderss: (Faker::Address.street_address).to_s,
    place_of_birth: (Faker::Address.city).to_s,
    first_name_father: Faker::Name.first_name,
    last_name_father: Faker::Name.last_name,
    first_name_mother: Faker::Name.first_name,
    last_name_mother: Faker::Name.last_name
    )
end

##########################################################
# CANDIDATES
##########################################################

Candidate.create(
    avatar: Faker::Avatar.image,
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
    avatar: Faker::Avatar.image,
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
    avatar: Faker::Avatar.image,
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
    avatar: Faker::Avatar.image,
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
    avatar: Faker::Avatar.image,
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
    avatar: Faker::Avatar.image,
    first_name: 'Mickey',
    middle_name: Faker::Name.last_name,
    last_name: 'Mouse',
    position: 'Senator',
    age: (rand(1...60)).to_i,
    agenda: Faker::Lorem.paragraph(2),
    achievements: Faker::Lorem.paragraph(3),
    votes_rendered: 17,
    )