class Pizza
  attr_accessor :toppings, :delivery_time
  def initialize(toppings=[Topping.new('cheese', vegetarian: true)])
    @toppings = toppings
    @delivery_time = nil
  end

  def deliver!#(now=30)
    # @delivery_time = now
    @delivery_time = Time.now + 30 * 60
  end

  def vegetarian?
    @toppings.any? { |topping| (topping.vegetarian == true)}
  end
end

class Topping
  attr_accessor :name, :vegetarian
  # Instantiate a new topping
  #
  #name - The String name of the topping
  #
  # Returns a new Topping object

  def initialize(name, vegetarian: false)
    @name = name
    @vegetarian = vegetarian
  end

  def method_name

  end
end
