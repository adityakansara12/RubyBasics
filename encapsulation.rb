=begin
  => Encapsulation binds the properties(attributes) and behaviours(methods) of a Class.
  => Encapsulation can be achieved using access modifiers(private, protected, etc.) by restricting access to sensitive information.
=end

class Car
  def initialize color, type, owner_name1, company
		@color = color
		@type = type
		self.owner_name= owner_name1
		puts "A #{company} of color: #{@color} and type: #{@type} is purchased by #{owner_name}"
	end

	def engine_start
		inject_fuel
		generate_spark
	end

	def engine_stop
		stop_fuel
	end

	def sell_the_car_to buyer_name
		self.owner_name=  buyer_name
	end

	def depreciation
	end

	attr_reader :owner_name


	private

	def inject_fuel
		puts "Engine Starting"
	end

	def generate_spark
		move_pistons
	end

	def move_pistons
		puts "Engine Started"
	end

	def stop_fuel
		puts "Engine Stopping"
		stop_pistons
	end

	def stop_pistons
		puts "Engine Stopped"
	end

	attr_writer :owner_name
end

car1 = Car.new "Red", "Sedan", "Aditya", "BMW"
car1.engine_start
car1.engine_stop


puts "The owner of the car is #{car1.owner_name}"

car1.sell_the_car_to "Dhyey" # Aditya sold the car to dhyey

puts "The owner of the car is #{car1.owner_name}"

# We cannot directly modify the "owner_name" attribute like below
# car1.owner_name= "Dhyey"
