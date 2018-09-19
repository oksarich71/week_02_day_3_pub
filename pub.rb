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
    return @drinks.delete(drink)
  end

  def transaction(customer,drink_to_buy)
    returned_drink = drink_sold(drink_to_buy)
    customer.buy_drink(returned_drink)
  end



end
