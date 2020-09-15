require "minitest/autorun"
require "minitest/pride"
require "./lib/item"
require "./lib/food_truck"

class FoodTruckTest < Minitest::Test
def test_it_has_attributes
  food_truck = FoodTruck.new("Rocky Mountain Pies")

  assert_equal "Rocky Mountain Pies", food_truck.name
  expected = {}
  assert_equal expected, food_truck.inventory

  
  # food_truck.check_stock(item1)
  # #=> 0
  #
  # food_truck.stock(item1, 30)
  #
  # pood_truck.inventory
  # #=> {#<Item:0x007f9c56740d48...> => 30}
  #
  # food_truck.check_stock(item1)
  # #=> 30
  #
  # food_truck.stock(item1, 25)
  #
  # food_truck.check_stock(item1)
  # #=> 55
  #
  # food_truck.stock(item2, 12)
  #
  # food_truck.inventory
  # #=> {#<Item:0x007f9c56740d48...> => 55, #<Item:0x007f9c565c0ce8...> => 12}
end
end
