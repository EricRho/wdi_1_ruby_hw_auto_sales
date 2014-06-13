require 'date'

class Car

  DEPRECIATION = 0.95

  attr_reader :make, :model, :year, :msrp

  # has a make, model, and year of manufacture
  def initialize(make, model, year, msrp)
    @make = make
    @model = model
    @year = year
    @msrp = msrp
    #@value = current_value
  end

  def depreciate
    price = msrp * DEPRECIATION
  end


  def current_value
    lifespan = (Date.today.year) - year
    lifespan.times do |depreciate|
      depreciate = msrp * DEPRECIATION
    end
    depreciate
  end


  # has an MSRP (original retail price)
  # has a value (MSRP modified by depreciation, taking the year of manufacture into account)
  # all cars have a constant depreciation of 5% per year
  # has a manager markup
  # has a price (value modified by the manager markup)

end
