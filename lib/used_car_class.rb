require_relative 'car_class'

class UsedCar < Car

  attr_accessor :mileage

  DEPR_PER_MILE = 0.999999

  def initialize(make, model, year, msrp, markup, mileage)
    @mileage = mileage

    super(make, model, year, msrp, markup)
  end

  def depreciated_value
    current_value * (DEPR_PER_MILE * mileage)
  end

end

# has the same attributes as a new car
# has a mileage
# may have one or more damages (scuffed paint, missing hubcaps, etc.)
# has a value (same calculation as a new car, modified by mileage depreciation and the cost of all current damages)
# all used cars have a constant mileage depreciation of 1% per 10,000 miles (0.0001% per mile)
