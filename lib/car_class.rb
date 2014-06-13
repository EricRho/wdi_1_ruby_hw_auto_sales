require 'date'

class Car

  DEPRECIATION = 0.95

  attr_reader :make, :model, :year, :msrp

  attr_accessor :value, :markup, :price

  # has a make, model, and year of manufacture
  def initialize(make, model, year, msrp, markup)
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

  def price
    (current_value * (markup + 1)).round(2)
  end
end
