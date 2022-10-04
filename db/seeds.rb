# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Office.destroy_all
Employee.destroy_all 

option = ["entry-level", "manager", "senior-manager"]
salary = [ 50000, 75000, 100000]

2.times do 
    User.create(first_name: Faker::Name.first_name, 
     last_name: Faker::Name.last_name,
     username: Faker::Name.initials, email: Faker::Internet.email,
     password: "password" )
end 

20.times do 
    Office.create(company_name: Faker::Company.industry, 
     location: Faker::Address.state, 
     owner: Faker::Name.name )
end 


100.times do 
     Employee.create(first_name: Faker::Name.first_name , last_name: Faker::Name.last_name, 
     title: option.sample, salary: salary.sample, 
     user: User.all.sample, office: Office.all.sample )
end 

puts "YOU GOT SEEDS!"
