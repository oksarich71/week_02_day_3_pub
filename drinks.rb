class Drink

  attr_reader :name, :price
  attr_accessor :abv


  def initialize(name, price, abv)
    @name = name
    @price = price
    @abv = abv
  end


end
