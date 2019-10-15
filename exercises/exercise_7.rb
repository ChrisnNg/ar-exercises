require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

puts "Please add a store name"
print ">"
input = gets.chomp


new = Store.create(name: input)

puts new.errors.details[:name]
puts new.errors.details[:annual_revenue]
puts new.errors.details[:mens_apparel]
puts new.errors.details[:womens_apparel]
