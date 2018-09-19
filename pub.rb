class Pub

  attr_reader :name
  attr_accessor :till, :drinks


  def initialize(name)
    @name = name
    @till = 0
    @drinks = []
  end

  def stock()
    @drinks.count
  end

  def add_drink(drink)
    @drinks.push(drink)
  end

  def drink_bought(drink)
    @till += drink.price
  end

  def drink_sold(drink)
    @drinks.pop
  end



end
