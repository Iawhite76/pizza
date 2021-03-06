require './pizza'

describe Pizza do
  it "exists" do
      expect(Pizza).to be_a(Class)
    end

  describe '.initialize' do
    it 'records all of the toppings' do
      toppings = [
        Topping.new('mushrooms', vegetarian: true),
        Topping.new('pepperoni')
      ]
      pizza = Pizza.new(toppings)

      expect(pizza.toppings).to eq(toppings)
    end
  end

  it 'defaults the toppings to cheese only, if the pizza has no toppings' do
    pizza = Pizza.new

    expect(pizza.toppings.size).to eq(1)
    expect(pizza.toppings.first.name).to eq('cheese')
  end

  it 'return true if all toppings on pizza are vegetarian' do
      toppings = [
        Topping.new('mushrooms', vegetarian: true),
        Topping.new('cheese', vegetarian: true),
        Topping.new('olives', vegetarian: true)
      ]

      pizza = Pizza.new(toppings)

      expect(pizza.vegetarian?).to eq(true)
    end

    it 'should add topping to @toppings in Pizza when Pizza.add_topping(topping) is called' do
      topping = Topping.new('bell peppers', vegetarian: true)

      pizza = Pizza.new
      pizza.add_topping(topping)

      # 2 for default topping cheese plus added topping bell peppers
      expect(pizza.toppings.count).to eq(2)
      expect(pizza.toppings.last.name).to eq('bell peppers')
    end
  xit 'mark @delivery_time attribute on Pizza for 30 minutes from now (Time.now + 30*60)' do
      pizza = Pizza.new

      expect(pizza.deliver!).to eq(Time.now + 30 * 60)
  end
end

describe Topping do
  describe '.initialize' do
    it "sets the name of the topping" do
      topping = Topping.new('olives')

      expect(topping.name).to eq('olives')
    end
  end

    it "exists" do
    expect(Topping).to be_a(Class)
  end

    it 'sets whether or not the topping is vegetarian' do
      topping = Topping.new 'bell peppers', vegetarian: true

      expect(topping.vegetarian).to eq(true)
    end


end
