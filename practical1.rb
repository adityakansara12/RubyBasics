class Car

  NO_OF_WHEELS = 4

  FUEL = {
    cng: 1,
    petrol: 2,
    diesel: 3
  }

  def initialize()
    print "Enter car price: "
    price = gets.to_i
    puts "Price with 18% gst #{price_with_gst(price)}"

    print "Enter car color: "
    set_color(gets.to_s) # This variable can be accessed within whole class
    get_color

    puts "Number of wheels: #{get_wheels}"

    print "Fuel type: Enter 1 for CNG, 2 for PETROL, 3 for DIESEL: "
    set_fuel_type(gets.to_i)
    puts "Fuel type selected: #{get_fuel_type.upcase}"
  end

  def set_fuel_type(value)
    @fuel = FUEL.key(value)
  end

  def get_fuel_type
    @fuel
  end

  def price_with_gst(price)
    ((price.to_f)*1.18).to_i
  end

  def get_color
    puts "the color of the car is #{@color}"
  end

  def set_color(color)
    @color = color # variable "color" can only be used within this method
  end

  def get_wheels
    puts "Car has #{NO_OF_WHEELS} wheels"
  end

end

car1 = Car.new
