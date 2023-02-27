(0..9).each do |i|
  puts i
end

[1,2,3,345,657].each do |index|
  puts index
end

{branch: 'CE',  college:'LDCE'}.each do |key,value|
  puts "#{key} #{value}"
end

10.times do |i|
  puts i
end

3.upto(10) do |n|
  puts n
end

10.downto(9) do |i|
  puts i
end

"My \n Name \n Is \n Aditya".each_line do |line|
  puts line
end


# Enumerators
e = [1,2,3,4].each
puts e.class #Enumerator

puts e.next #1
puts e.next #2
puts e.next #3
puts e.next #4
puts e.next #StopIteration raised
