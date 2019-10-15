require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

# class Store < ActiveRecord::Base
#   has_many :employees
# end

# class Store < ActiveRecord::Base
#   belongs_to :store
# end

burnaby = Store.create do |s|
  s.name = "Burnaby"
  s.annual_revenue = 300000
  s.mens_apparel = true
  s.womens_apparel = true
end


richmond = Store.create do |s|
  s.name = "Richmond"
  s.annual_revenue = 1260000
  s.mens_apparel = false
  s.womens_apparel = true
end


gastown = Store.create do |s|
  s.name = "Gastown"
  s.annual_revenue = 190000
  s.mens_apparel = true
  s.womens_apparel = false
end

stores = Store.all
puts stores.count