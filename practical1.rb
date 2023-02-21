class Car

  NO_OF_WHEELS = 4

  def initialize()
    @color = "White" # This variable can be accessed within whole class
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
p car1.price_with_gst(1000000)
car1.get_wheels
car1.get_color
car1.set_color("black")
car1.get_color
