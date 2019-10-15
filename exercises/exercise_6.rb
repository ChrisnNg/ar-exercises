require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Chris", last_name: "Ng", hourly_rate: 100)
@store1.employees.create(first_name: "Bob", last_name: "Builder", hourly_rate: 60)

@store2.employees.create(first_name: "Greg", last_name: "Norris", hourly_rate: 55)
@store2.employees.create(first_name: "Timmy", last_name: "Turner", hourly_rate: 75)
@store2.employees.create(first_name: "Cosmo", last_name: "Wanda", hourly_rate: 45)