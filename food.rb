class Food

  attr_reader :name
  attr_accessor :price, :rejuvenation_level


  def initialize(name, price, rejuvenation_level)
    @name = name
    @price = price
    @rejuvenation_level = rejuvenation_level
  end


end #class end
