require 'time'

t1 = DateTime.new
t2 = DateTime.new + 30
next_30_days = t1..t2

# Example use
# p next_30_days.select{ |n| n.friday? }.map {|m| m.day}
p next_30_days.select(&:friday?).map(&:day)

time1 = Time.new
puts "Current Time : " + time1.inspect

time2 = Time.now
puts "Current Time : " + time2.inspect

puts time1.year
puts time1.month
puts time1.day
puts time1.wday
puts time1.yday
puts time1.hour
puts time1.min
puts time1.sec
puts time1.usec
puts time1.zone

p Time.local(2008,7,8,9,10,11)
p Time.utc(2008,7,8,9,10,11)
p Time.gm(2008,7,8,9,10,11)

time3 = Time.new
values = time3.to_a
p values

time4 = Time.new
values = time4.to_a
puts Time.utc(*values)

puts Time.now.to_i
puts Time.at(Time.now.to_i)
puts Time.now.to_f

puts time4.strftime("%d-%m-%y %H:%M:%S")
