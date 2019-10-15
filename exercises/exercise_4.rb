require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey = Store.create do |s|
  s.name = "Surrey"
  s.annual_revenue = 224000
  s.mens_apparel = false
  s.womens_apparel = true
end


whistler = Store.create do |s|
  s.name = "Whistler"
  s.annual_revenue = 1900000
  s.mens_apparel = true
  s.womens_apparel = false
end


yaletown = Store.create do |s|
  s.name = "Yaletown"
  s.annual_revenue = 430000
  s.mens_apparel = true
  s.womens_apparel = true
end

@mens_stores = Store.where(mens_apparel: true)

puts '-----output-----'

@mens_stores.each do |store|
  print store.name
  print ' '
  print store.annual_revenue
  puts
end
@womens_stores = Store.where(womens_apparel: true)
@womens_stores = @womens_stores.where("annual_revenue < ?", 1000000 )
puts @womens_stores.count