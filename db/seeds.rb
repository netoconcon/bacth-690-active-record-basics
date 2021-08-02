# This is where you can create initial data for your app.
# require 'Faker'


# puts "Cresting Restaurants!!!!"
# puts "...."

# rest1 = Restaurant.new(name: "Mc", address: "Paulista", rating: 3)
# rest1.save!

# puts "#{rest1.name} criado!!!!"


# puts "Finished Seed!!! =)"


# 100.times do
#   restaurant = Restaurant.new(
#     name: Faker::Beer.brand,
#     address: Faker::ChuckNorris.fact,
#     rating: rand(0..5)
#     )
#   restaurant.save!
#   p restaurant
# end

# puts "Finished Seed!!! =)"


# ************* API **************

require 'json'
require 'rest-client'

response = RestClient.get "https://api.github.com/users/lewagon/repos"
repos = JSON.parse(response)

repos.each do |repo|
  restaurant = Restaurant.new(
    name: repo["full_name"]
    )
  p restaurant
end












