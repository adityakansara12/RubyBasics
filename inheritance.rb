=begin
When to use modules: "has-a" relationship can be implemented using modules
When to use "Car < Vehicle" like inheritance: "is-a" relationship can be implemented using this type of inheritance

Single inheritance: 1. BMW includes Sunroof module
                    2. AUDI includes AutomaticViper module

Multiple inheritance: 1. MERCEDES includes AutomaticViper module, Sunroof module
                         It also inherits Sedan class.

Multilevel inheritance: 1. BMW < SUV < Car
                        2. MERCEDES < Sedan < Car
                        3. AUDI < Hatchback < Car
=end

class Car

  def initialize color, type, owner_name1, company
    @color = color
    @type = type
    self.owner_name= owner_name1
    puts "A #{company} of color: #{@color} and type: #{@type} is purchased by #{owner_name}"
  end

  attr_accessor :owner_name
end

class Sedan < Car

  def initialize color, owner_name, company
    super(color, "SEDAN", owner_name, company)
  end

end

class SUV < Car

  def initialize color, owner_name, company
    super(color, "SUV", owner_name, company)
  end

end

class Hatchback < Car

  def initialize color, owner_name, company
    super(color, "HATCHBACK", owner_name, company)
  end

end

module Sunroof
  def sunroof_open
    puts "Sunroof opening..."
  end

  def sunroof_close
    puts "Sunroof closing..."
  end
end

module AutomaticViper
  def raining
    puts "Viper started working"
  end
end

class BMW < SUV
include Sunroof
  def initialize color, owner_name
    super(color, owner_name, "BMW")
  end
end

class MERCEDES < Sedan
include AutomaticViper
include Sunroof
  def initialize color, owner_name
    super(color, owner_name, "MERCEDES")
  end
end

class AUDI < Hatchback
include AutomaticViper
  def initialize color, owner_name
    super(color, owner_name, "AUDI")
  end
end


audi1 = AUDI.new "Red", "Aditya"
audi1.raining

puts ""

mercedes1 = MERCEDES.new "Black", "Dhyey"
mercedes1.sunroof_open
mercedes1.raining
mercedes1.sunroof_close

puts ""

bmw1 = BMW.new "Blue", "Krutik"
bmw1.sunroof_open
bmw1.sunroof_close
