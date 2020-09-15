class Item
  attr_reader :name
  def initialize(data)
    @name  = data[:name]
    @price = data[:price]
  end

  def price
    (@price.gsub("$", '')).to_f
  end
end
