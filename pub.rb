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
    if customer.age < 18 || customer.drunkeness < 15
    # elsif customer.drunkeness < 15
      return "Soft drink only!"
    else
    returned_drink = drink_sold(drink_to_buy)
    customer.buy_drink(returned_drink)
    end
  end





end #class end
