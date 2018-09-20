require("minitest/autorun")
require("minitest/rg")
require_relative("../food.rb")

class FoodTest < MiniTest::Test

  def setup()
  @burger = Food.new("CheeseBurger", 9, 6)
  @pasta = Food.new("Pasta", 6, 5)
  end

  def test_food_has_price()
    assert_equal(9, @burger.price)
  end

def test_food_has_rejuvenation_level()
  assert_equal(5, @pasta.rejuvenation_level)
end


end #class end
