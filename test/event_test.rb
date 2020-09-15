require "minitest/autorun"
require "minitest/pride"
require "./lib/item"
require "./lib/food_truck"
require "./lib/event"

class EventTest < Minitest::Test
  def test_event_has_attributes
    event = Event.new("South Pearl Street Farmers Market")
    assert_equal "South Pearl Street Farmers Market", event.name
    assert_equal [], event.food_trucks
  end
end