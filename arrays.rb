names = Array["Aditya", "Dhyey", "Krutik", 1, 10.2, true]
puts names
puts names[0]
puts names[5]
puts names[6].class # Array out of bound: class is NilClass

puts names[-1] # First element from the rightside
puts names[0,3]

names[3] = "Kansara"
puts names[3]

friends = Array.new
friends[0] = "aditya"
friends[5] = "kansara"

puts friends.length # output: 6
puts friends

puts friends.include? "aditya"
puts friends.include? "Aditya"

puts friends.reverse
# puts friends.sort # To sort all of the values must be of the same type.

puts friends[1..3]
puts friends[4..-1]


=begin

1 .length
2 .first
3 .last
4 .take(n)        take first n elements
5 .drop(n)        take elements after after skipping n elements
6 .pop            remove last element
7 .shift          remove first element
8 .push           add element at last
9 .unshift(1)     add 1 at first position
10 .delete(1)     delete 1 from the array
11 .delete_at(n)  delete nth element
12 .reverse       reverse the array
13 .select        e.g., array.select { |number| number > 0 }
14 .include?
15 .join          join array elements
16 .each          e.g., array.each do |element| puts element end
17 .map           e.g., array.map { |element| element*2 } puts element end
18 .unique        returns an array with unique elements
19 .concat(arr1)  combines two or more arrays

=end
