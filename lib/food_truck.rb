class FoodTruck
  attr_reader :name, :inventory
  def initialize(name)
    @name      = name
    @inventory = {}
  end

  def check_stock(item)
      if @inventory[item].nil?
        0
      else
        @inventory[item]
      end
  end

  def stock(item, amount)
    if @inventory[item].nil?
      @inventory[item] = amount
    else
      @inventory[item] += amount
    end
  end

  def potential_revenue
    revenue_tot = 0
    @inventory.each do |item|
      revenue_tot += check_stock(item[0]) * item[0].price
    end
    revenue_tot
  end

end
