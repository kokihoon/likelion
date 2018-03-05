require 'geocoder'

location = gets.chomp
loCord = Geocoder.coordinates location
puts loCord