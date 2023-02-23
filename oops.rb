# .allocate method use

# class Test
#   def initialize
#     puts ".allocate method is not used in #{self}"
#   end
#   def method1
#     puts "In method 1"
#   end
# end
# test1 = Test.allocate
# test1.method1
# test2 = Test.new
# test2.method1

# use of attr_accessor, attr_reader, attr_writer
# class People
#     attr_reader :name, :age
#     attr_accessor :address
#     def initialize name, age
#         @name = name
#         @age = age
#     end
# end
# p1 = People.new "Aditya","22"
# p p1.age
# p p1.name
# p1.address = "Ahmedabad"
# p p1.address


# Class variable scope
# class Test
#     @@classVar = "Class Variable"
#     def initialize
#         puts @@classVar
#     end
#     def get
#         puts @@classVar
#     end
#     def set value
#         @@classVar = value
#     end
# end
# test1 = Test.new
# test2 = Test.new
# test1.get
# test2.set "asfd"
# test1.get

#Encapsulation
# class UserData
#     def initialize user_name, pass_word
#         self.username= user_name
#         self.password= pass_word
#         puts password
#     end

#     def login user_name, pass_word
#         if password == pass_word and username == user_name
#             puts "Access Granted"
#         else
#             puts "Wrong Credentials"
#         end
#     end

#     private
#     attr_accessor :password, :username

# end

# u1 = UserData.new "Adi","asd"

# u1.login("Ai","asd")

#Abstraction
# class Shape
#     def area
#     end
# end

# class Rectangle < Shape
#     def area length, width
#         length.to_f * width.to_f
#     end
# end

# class Circle < Shape
#     PI = 3.14
#     def area radius
#         PI * (radius ** 2)
#     end
# end

# r1 = Rectangle.new
# p r1.area 12, 34

# c1 = Circle.new
# p c1.area 23

#Inheritance
class Animal
    def initialize
        puts "An animal object is initialized"
    end

    def walking
        puts "Animal can walk"
    end

    def eating
        puts "Animal can eat"
    end

end

class Dog < Animal
    def initialize
        puts "A Dog object is initialized"
    end

    def walking
        puts "A Dog is walking"
    end

    def eating
        puts "A Dog is eating"
    end
end
