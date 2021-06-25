# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'
require 'pry'

g1 = Gym.new("Planet Fitness")
g2 = Gym.new("LA Fitness")
g3 = Gym.new("Edge Fitness")

l1 = Lifter.new("Doe", 120)
l2 = Lifter.new("Doug", 200)
l3 = Lifter.new("Amari", 300)

m1 = Membership.new(100, g1, l1)
m2 = Membership.new(200, g2, l1)
m3 = Membership.new(300, g3, l2)
m4 = Membership.new(400, g1, l3)

binding.pry

puts "Gains!"
