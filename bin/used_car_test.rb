require_relative '../lib/used_car_class.rb'

civic = UsedCar.new("Honda", "Civic SI", 2007, 25_000, 0.3, 100_000)
#mini = UsedCar.new("Mini", "Cooper S", 2010, 26_000, 0.3, 100_000)




puts "Used #{civic.year} #{civic.make} #{civic.model} with #{civic.mileage} miles."

puts civic.depreciated_value_mile

puts civic.price
