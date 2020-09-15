class Event
  attr_reader :name, :food_trucks
  def initialize(name)
    @name        = name
    @food_trucks = []
  end

  def add_food_truck(food_truck_obj)
    @food_trucks << food_truck_obj
  end

  def food_truck_names
    event_truck_names = @food_trucks.map do |truck|
      truck.name
    end
    event_truck_names
  end

  def food_trucks_that_sell(item_obj)
    trucks_selling_desired_item = []
    @food_trucks.each do |truck|
      truck.inventory.each do |item|
        trucks_selling_desired_item << truck if item[0].name == item_obj.name
      end
    end
    trucks_selling_desired_item.flatten
  end

  def total_inventory
    require "pry"; binding.pry
  end

end
