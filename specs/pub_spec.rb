require("minitest/autorun")
require("minitest/rg")
require_relative("../pub.rb")
require_relative("../drinks.rb")
require_relative("../customers.rb")

class PubTest < MiniTest::Test

  def setup()
  @beer = Drink.new("Session", 4, 6)
  @martini = Drink.new("Martini", 6, 5)

  @pub = Pub.new("Chanter")
  @customer1 = Customer.new("Thomas", 100, 24, 12)

  end

   def test_pub_has_name()
     assert_equal("Chanter", @pub.name)
   end

   def test_stock_count()
     assert_equal(0, @pub.stock)
   end

   def test_add_drink()
     @pub.add_drink(@beer)
     assert_equal(1, @pub.stock)
   end

   def test_customer_buys_drink_pub_taking_money
     @pub.drink_bought(@beer)
     @customer1.buy_drink(@beer)
     assert_equal(4, @pub.till)
     assert_equal(96, @customer1.wallet)
   end

   def test_customer_buys_drink_pub_loses_drink
     @pub.add_drink(@beer)
     @pub.drink_bought(@beer)
     @customer1.buy_drink(@beer)
     @pub.drink_sold(@beer)
     assert_equal(0, @pub.stock)

   end

  #  def test_transaction_pub_loses_customer_gains
  #    @pub.add_drink(@beer)
  #    @pub.transaction(@customer1, @beer)
  #    assert_equal(1, @customer1.drinks.count)
  #    assert_equal(0, @pub.stock)
  # end

  def test_customer_is_underage
    # @pub.add_drink(@beer)
    child = Customer.new("Billy", 5, 16, 78)
    sale = @pub.transaction(child, @beer)
    # assert_equal(1, @pub.stock)
    assert_equal("Soft drink only!", sale)
  end
   #
   def test_customer_is_too_drunk
     customer = Customer.new("Bob", 25, 21, 23)
     sale = @pub.transaction(customer, @beer)
     assert_equal("Soft drink only!", sale)
   end


   # def test






end #Class end
