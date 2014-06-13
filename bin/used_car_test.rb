require_relative '../lib/used_car_class.rb'

civic = Car.new("Honda", "Civic SI", 2007, 25_000, 0.3)
mini = Car.new("Mini", "Cooper S", 2010, 26_000, 0.3)



puts "Used #{mini.year} #{mini.make} #{mini.model} with #{mileage} miles."

