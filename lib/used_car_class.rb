require_relative 'car_class'

class UsedCar < Car

  attr_accessor :mileage

  DEPR_PER_MILE = 0.000005

  def initialize(make, model, year, msrp, markup, mileage)
    @mileage = mileage

    super(make, model, year, msrp, markup)

    # add damages class variable somewhere around here?
    @damages = {}
  end

  # create method to add damage
  def include_damage(damage)
    @damages[damage.description] = damage.cost
  end

  # create method to depreciate price of car from damage
  def depr_damage
    damage_cost = 0
    @damages.each do |damage, cost|
      damage_cost += cost
    end
    damage_cost
  end

  # insert previous method to depreicate price of car from damage into depreciated_value_mile
  def depreciated_value_mile
    current_value * (1 - mileage * DEPR_PER_MILE)
  end

  def total_depr
    (msrp - current_value - depr_damage)
  end

  def price
    (depreciated_value_mile * (1 + markup)).round(2)
  end

end

# has the same attributes as a new car
# has a mileage
# may have one or more damages (scuffed paint, missing hubcaps, etc.)
# has a value (same calculation as a new car, modified by mileage depreciation and the cost of all current damages)
# all used cars have a constant mileage depreciation of 1% per 10,000 miles (0.0001% per mile)
