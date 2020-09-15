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
    
    
    
  end
end
