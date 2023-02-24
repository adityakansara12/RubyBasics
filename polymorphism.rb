=begin
  There are two types of polymorphism
  1. Using Inheritance
  => method "depreciation" is defined in all child-class(Sedan,SUV,Hatchback) and parent class(Car)
  => Child classes have different implementation of "depreciation" method

  2. Using DuckTyping
  => Every car engine can be started using key
  => An object whose engine can be started is treated as a Car due to the concept of duck-typing
=end


class Car
  # Duck-Typing
  def engine_start car
    car.engine_start
  end

  def depreciation
	end
end

class Sedan < Car

  def depreciation
    puts "A Sedan car price depreciated to 90% of the buying price after 1 year."
	end

  def engine_start
    puts "Sedan car engine started"
  end
end

class SUV < Car

  def depreciation
    puts "A SUV car price depreciated to 80% of the buying price after 1 year."
	end
  def engine_start
    puts "SUV car engine started"
  end
end

class Hatchback < Car
  def depreciation
    puts "A Hatchback car price depreciated to 70% of the buying price after 1 year."
	end
  def engine_start
    puts "HATCHBACK car engine started"
  end
end

# Polymorphism using Inheritance
sedan1 = Sedan.new
sedan1.depreciation

puts ""

# Polymorphism using Duck-Typing
Car.new.engine_start sedan1

puts ""

# Polymorphism using Inheritance
suv1 = SUV.new
suv1.depreciation

puts ""

# Polymorphism using Duck-Typing
Car.new.engine_start suv1

puts ""

# Polymorphism using Inheritance
hatchback1 = Hatchback.new
hatchback1.depreciation

puts ""

# Polymorphism using Duck-Typing
Car.new.engine_start hatchback1
