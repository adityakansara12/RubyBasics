=begin
  Create an array from 1 to 10 and perform all methods on the array
=end

arr = Array.new(10) { |i| i+1 }

p arr.at(5)
p arr.fetch(100, "Error")
p arr.first
p arr.last
p arr.take(3)
p arr.drop(3)
p arr.length
p arr.count
p arr.size
p arr.empty?
p arr.include?(4)
p arr.push(11)
p arr << 12
p arr.unshift(0)
p arr.insert(3, 13)
p arr.insert(4, 14, 15, 15, nil)
p arr.pop
p arr.shift
p arr.delete_at(3)
# p arr.delete_if { |a| a < 0 }
# p arr.keep_if { |a| a > 0 }
p arr.delete(14)
p arr.compact
p arr.compact!
p arr.uniq
p arr.each { |i| print (i*2).to_s + " " }
p arr.map {|a| 2*a}
p arr
p arr.map! {|a| 2*a}
p arr.select { |a| a > 15 }
p arr.reject { |a| a < 15 }
p arr.reject! { |a| a < 15 }
p arr.all? { |a| a > 0 }
p arr.any? { |a| a < 0 }
p arr.bsearch { |x| x>=20 }
# arr.clear
p arr.combination(2) { |combination| p combination }
p arr.concat([1,2,3,4], [5,6,7,8])
