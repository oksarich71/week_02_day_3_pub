require("minitest/autorun")
require("minitest/rg")
require_relative("../pub.rb")
require_relative("../drinks.rb")

class PubTest < MiniTest::Test

  def setup()
  @beer = Drink.new("Session", 4)
  @martini = Drink.new("Martini", 6)

  @pub = Pub.new("Chanter")

  end

   def test_pub_has_name()
     assert_equal("Chanter", @pub.name)
   end

   def test_stock_count()
     assert_equal(0, @pub.stock)
   end






end #Class end
