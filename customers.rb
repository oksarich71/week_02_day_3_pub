class Customer

attr_reader :name, :age
attr_accessor :wallet, :drinks, :drunkeness


  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age =  age
    @drinks = []
    @drunkeness = 0

  end

  def buy_drink(drink)
    @wallet -= drink.price
    @drinks << drink if !drink.nil?
    @drunkeness += drink.abv
  end

  def drink_count
    @drinks.count
  end

  def drunk(drink)
    @drunkeness += drink.abv
  end

  # def take_drink(drink)
  # end



end #class end
