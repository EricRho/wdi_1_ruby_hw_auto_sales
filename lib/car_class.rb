class Car

  attr_reader :make, :model, :year

# has a make, model, and year of manufacture
  def initialize(make, model, year)
    @make = make
    @model = model
    @year = year
  end



  # has an MSRP (original retail price)
  # has a value (MSRP modified by depreciation, taking the year of manufacture into account)
  # all cars have a constant depreciation of 5% per year
  # has a manager markup
  # has a price (value modified by the manager markup)

end
