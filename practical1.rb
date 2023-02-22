=begin
  Create a Class named Car
  Create a method that takes an argument of price and returns the integer value of the price plus 18% GST of that price
  Create a method and create an instance and local variable with the same name color and test the scope of both variable
  Create a constant within the class named no of wheels, set value 4, and use it in a different method
  Create a method to take an argument for the color and print string: the color of the car is ___( fill in the color name here from the argument)
  Create an enum for fuel type and use it with any method
=end
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
