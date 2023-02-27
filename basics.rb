# Printing techniques
value = 10
name = "Aditya"
puts "Aditya #{value}"
print "Hello World #{value} \n"
puts "My name is " + name

# Different Datatypes
name = "aditya"
number = "456"
spi = "8.2"
isToy = false
isCat = true
world = nil #behaves like false when used in conditional statement

puts world == isToy
puts world == isCat
puts world.object_id
puts nil.object_id # There is only one "nil" object with an object_id 8

# String operations
word = "Something written"
puts word.upcase
puts word.downcase
puts word.strip # to remove extra white-spaces from the string-start and string-end
puts word.length
puts word.include? "hello"
puts word.include? "Something"
puts word[2]
puts word[0, 9]
puts word.index("t") #Index of first occurence of "t"

# Numbers
number1 = 10
number2 = -20

puts number1+number2
puts number1*number2
puts number1-number2
puts number1/number2
puts number1**number2
puts number1%number2
puts ("my favorite number is " + number1.to_s)

number3 = 3.14
number4 = 3.56
puts number3.abs
puts number3.round # Rounds to nearest integer
puts number4.round
puts number3.ceil
puts number3.floor

number5 = 20.25 # Math class provides many operations on number datatype
puts Math.sqrt(number5)
puts Math.log(number5)

puts 10 + 5 # 15
puts 10.0 + 5 # 15.0
puts 10 / 5 # 2
puts 10.0 / 5 # 2.0

# Getting input from user
print "Enter your name: "
name2 = gets
puts "Hello #{name2}"
