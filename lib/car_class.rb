require 'date'

class Car

  DEPRECIATION = 0.95

  attr_reader :make, :model, :year, :msrp

  attr_accessor :value, :markup, :price

  # has a make, model, and year of manufacture
  def initialize(make, model, year, msrp)
    @make = make
    @model = model
    @year = year
    @msrp = msrp
    #@value = value
    @markup = markup
    @price = price
    #@value = current_value
  end


  def current_value
    age = (Date.today.year) - year
    msrp * DEPRECIATION ** age
  end


  # has an MSRP (original retail price)
  # has a value (MSRP modified by depreciation, taking the year of manufacture into account)
  # all cars have a constant depreciation of 5% per year
  # has a manager markup
  # has a price (value modified by the manager markup)

end
