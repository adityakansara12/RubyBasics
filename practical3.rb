arr = ["red", "black", "yellow", "pink", "blue", "green", "purple", "white", "orange", "gray"]
str=""
arr.reverse_each { |word| str += "#{word} " }
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
p arr.include?("grey")
p arr.push("off-white")
p arr << "sky-blue"
p arr.unshift("dark-blue")
p arr.pop
p arr.shift
p arr.delete_at(3)
p arr.delete_if { |a| a == "red" }
p arr.keep_if { |a| a == "green" }
p arr.delete("white")
p arr.compact
p arr.compact!
p arr.uniq
p arr.each { |i| print i.reverse }
p arr.map {|a| a+" color"}
p arr
p arr.map! {|a| a + " color"}
p arr.select { |a| a == "green" }
p arr.reject { |a| a == "green" }
p arr.reject! { |a| a == "green" }
p arr.all? { |a| a == "green" }
p arr.any? { |a| a == "green" }
p arr.bsearch { |x| x == "green" }
# arr.clear
p arr.combination(2) { |combination| p combination }
p arr.concat(["red", "black", "yellow", "pink",], ["blue", "green", "purple", "white"])
# p arr.flatten(0)
# p arr.flatten(1) argument is number of level
# p arr.flatten(2)
p arr.hash == arr.hash
