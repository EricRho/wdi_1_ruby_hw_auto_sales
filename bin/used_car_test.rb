require_relative '../lib/used_car_class.rb'
require_relative '../lib/damage'

civic = UsedCar.new("Honda", "Civic SI", 2007, 25_000, 0.3, 100_000)
mini = UsedCar.new("Mini", "Cooper S", 2004, 26_000, 0.3, 2_000)
scratch = Damage.new("scratch", 300)
gear_box = Damage.new("broken gearbox", 1_500)


#mini = UsedCar.new("Mini", "Cooper S", 2010, 26_000, 0.3, 100_000)




puts "Used #{civic.year} #{civic.make} #{civic.model} with #{civic.mileage} miles."

puts civic.depreciated_value_mile

puts civic.price



mini.include_damage(gear_box)
puts mini.price


