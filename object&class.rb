=begin
  => I have defined a class named "Car" and created 3 objects of the same class.
  => After creating objects I have done one data manipulation action.
=end

class Car

  def initialize color, owner_name1, company
    @color = color
    self.owner_name= owner_name1
    puts "A #{company} of color: #{@color} is purchased by #{owner_name}"
  end

  def sell_the_car_to buyer_name
    self.owner_name=  buyer_name
  end

  attr_reader :owner_name


  private

  attr_writer :owner_name
end

car1 = Car.new "red", "aditya", "mercedes"
car2 = Car.new "black", "dhyey", "bmw"
car3 = Car.new "blue", "krutik", "audi"

car2.sell_the_car_to "Nil"
puts "The owner of the car is #{car2.owner_name}"
