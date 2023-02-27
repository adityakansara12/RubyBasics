=begin
    In simple language if a car can be turned on by a key, we do not have to worry about what is happening under the hood.
    I have implimented similar concept here: => User of a car(object) can only use "engine_start" and "engine_stop" method
                                             => These methods' implementation is hidden from the car(object) user.
=end

class Car
  def initialize color, type, owner_name1, company
    @color = color
    @type = type
    @owner_name= owner_name1
    puts "A #{@company} of color: #{@color} and type: #{@type} is purchased by #{@owner_name}"
  end

  def engine_start
    inject_fuel
    generate_spark
  end

  def engine_stop
    stop_fuel
  end

  private

  # First 3 methods used to start engine
  def inject_fuel
    puts "Engine Starting..."
  end

  def generate_spark
    move_pistons
  end

  def move_pistons
    puts "Engine Started"
  end

  # Below methods used to stop engine
  def stop_fuel
    puts "Engine Stopping..."
    stop_pistons
  end

  def stop_pistons
    puts "Engine Stopped"
  end

end

car1 = Car.new "Red", "Sedan", "Aditya", "BMW"
car1.engine_start
car1.engine_stop
