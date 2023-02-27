=begin
  Create a method that uses proc/lambda
=end

# BLOCKS

[1,2,3].each do |i|
  puts i
end

# implicit block
def print_thrice
  yield
  yield
  yield
end

print_thrice {puts "Aditya"}

#Explicit block
def print_twice (&block)
  block.call
  block.call
end

print_twice {puts "Kansara"}

#Checking for block is given or not
def print_once
  if block_given?
    yield
    return
  puts "Block not given"
  end
end

print_once {puts "Given"}


# Proc : A way to define a block, can be saved to a variable for later use.

t = Proc.new { |x, y| puts "I don't care about the arguments! x: #{x}, y: #{y}" }
t.call(1,2, 3)

# When a proc returns, the fuction which called proc is returned.
new_proc = Proc.new { return 1 }
# puts "Proc result:  #{new_proc.call}"

def call_proc
  puts "Before proc"
  my_proc = Proc.new { return 2 }
  my_proc.call
  puts "After proc"
end

#By calling above function when the Proc returns, it returns the function in which it is called.("After proc" will not be printed)
p call_proc

# LAMBDA : A way to define a block and its parameters, can be saved into a variable for later use.
# LAMBDA is a special proc object
# When a lambda returns it returns like a function.

hello_message = -> {puts "Hello!"}
hello_message.call

two_times = ->(x) {x*2}
puts two_times.call(51)
